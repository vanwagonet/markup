public protocol CXCYTag: TagName {}

extension Tags.circle: CXCYTag {}
extension Tags.ellipse: CXCYTag {}
extension Tags.radialGradient: CXCYTag {}

public extension Attribute where Tag: CXCYTag {
    /// The `cx` attribute defines the x-axis coordinate of a center point.
    ///
    /// - Parameters:
    ///   - cx: The center x.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cx)
    @inlinable static func cx(_ cx: any Length) -> Self {
        Self("cx", value: Text(verbatim: String(cx)))
    }

    /// The `cy` attribute defines the y-axis coordinate of a center point.
    ///
    /// - Parameters:
    ///   - cy: The center y.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cy)
    @inlinable static func cy(_ cy: any Length) -> Self {
        Self("cy", value: Text(verbatim: String(cy)))
    }
}
