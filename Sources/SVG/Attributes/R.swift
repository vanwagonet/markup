public protocol RTag: TagName {}

extension Tags.circle: RTag {}
// extension Tags.radialGradient: RTag {}

public extension Attribute where Tag: RTag {
    /// The `r` attribute defines the radius of a circle.
    ///
    /// - Parameters:
    ///   - radius: The radius.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/r)
    @inlinable static func r(_ radius: any Length) -> Self {
        Self("r", value: Text(verbatim: String(radius)))
    }
}
