public protocol RXRYTag: TagName {}

extension Tags.ellipse: RXRYTag {}
extension Tags.rect: RXRYTag {}

public extension Attribute where Tag: RXRYTag {
    /// The `rx` attribute defines a radius on the x-axis..
    ///
    /// - Parameters:
    ///   - rx: The radius.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rx)
    @inlinable static func rx(_ rx: any Length) -> Self {
        Self("rx", value: Text(verbatim: String(rx)))
    }

    /// The `ry` attribute defines a radius on the y-axis.
    ///
    /// - Parameters:
    ///   - ry: The radius.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ry)
    @inlinable static func ry(_ ry: any Length) -> Self {
        Self("ry", value: Text(verbatim: String(ry)))
    }
}
