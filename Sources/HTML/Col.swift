import Markup

/// `<col>`: The Table Column element
///
/// The `<col>` HTML element defines a column within a table and is used for defining common semantics on all common cells.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/col)
public typealias Col = VoidElement<Tags.col>
extension Tags { public enum col: HTMLTagName { public static let name = "col" } }

public extension Attribute<Tags.col> {
    /// This attribute contains a positive integer indicating the number of consecutive columns the `<col>` element spans.
    ///
    /// - Parameters:
    ///   - span: The number of columns this one spans.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/col#span)
    @inlinable static func span(_ span: UInt) -> Self {
        Self("span", value: Text(verbatim: String(span)))
    }
}
