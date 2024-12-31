public protocol X1Y1X2Y2Tag: TagName {}

extension Tags.line: X1Y1X2Y2Tag {}
extension Tags.linearGradient: X1Y1X2Y2Tag {}

public extension Attribute where Tag: X1Y1X2Y2Tag {
    /// The `x1` attribute is used to specify the first x-coordinate for drawing an SVG element that requires more than one coordinate.
    ///
    /// - Parameters:
    ///   - x: The x coordinate.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x1)
    @inlinable static func x1(_ x: any Length) -> Self {
        Self("x1", value: Text(verbatim: String(x)))
    }

    /// The `x2` attribute is used to specify the second x-coordinate for drawing an SVG element that requires more than one coordinate.
    ///
    /// - Parameters:
    ///   - x: The x coordinate.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x2)
    @inlinable static func x2(_ x: any Length) -> Self {
        Self("x2", value: Text(verbatim: String(x)))
    }

    /// The `y1` attribute is used to specify the first y-coordinate for drawing an SVG element that requires more than one coordinate.
    ///
    /// - Parameters:
    ///   - y: The y coordinate.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y1)
    @inlinable static func y1(_ y: any Length) -> Self {
        Self("y1", value: Text(verbatim: String(y)))
    }

    /// The `y2` attribute is used to specify the second y-coordinate for drawing an SVG element that requires more than one coordinate.
    ///
    /// - Parameters:
    ///   - y: The y coordinate.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y2)
    @inlinable static func y2(_ y: any Length) -> Self {
        Self("y2", value: Text(verbatim: String(y)))
    }
}
