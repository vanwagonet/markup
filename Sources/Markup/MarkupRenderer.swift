/// A type that can render markup for buffering or output.
///
/// Implement this protocol to connect markup generation to an HTTP response body or DOM reconciler.
public protocol MarkupRenderer: AnyObject {
    /// Context for the encoder including the current `lang`.
    var context: MarkupContext { get set }

    /// Write out any markup content or element.
    ///
    /// This is intended for sending markup to a buffer or output stream.
    /// You must implement this method, and should not modify markup content at this stage.
    func render(_ markup: String)
    func renderSubstring(_ markup: Substring)
    func renderStaticString(_ markup: StaticString)
    func renderUTF8CodeUnit(_ markup: UTF8.CodeUnit)
    func renderUTF8CodeUnits<C>(_ markup: C) where C: Collection, C.Element == UTF8.CodeUnit
}

public extension MarkupRenderer {
    @inlinable
    func renderSubstring(_ markup: Substring) {
        render(String(markup))
    }

    @inlinable
    func renderStaticString(_ markup: StaticString) {
        render(markup.withUTF8Buffer { String(decoding: $0, as: UTF8.self) })
    }

    @inlinable
    func renderUTF8CodeUnit(_ markup: UTF8.CodeUnit) {
        render(String(Character(Unicode.Scalar(markup))))
    }

    @inlinable
    func renderUTF8CodeUnits<C>(_ markup: C) where C: Collection, C.Element == UTF8.CodeUnit {
        render(String(decoding: markup, as: UTF8.self))
    }
}
