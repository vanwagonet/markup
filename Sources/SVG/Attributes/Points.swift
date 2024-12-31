public protocol PointsTag: TagName {}

extension Tags.polygon: PointsTag {}
extension Tags.polyline: PointsTag {}

public extension Attribute where Tag: PointsTag {
    /// The `points` attribute defines a list of points. Each point is defined by a pair of number representing a X and a Y coordinate in the user coordinate system.
    ///
    /// - Parameters:
    ///   - points: The list of points.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/points)
    @inlinable static func points(_ points: (any Number, any Number)...) -> Self {
        .points(points)
    }

    /// The `points` attribute defines a list of points. Each point is defined by a pair of number representing a X and a Y coordinate in the user coordinate system.
    ///
    /// - Parameters:
    ///   - points: The list of points.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/points)
    @inlinable static func points<S>(_ points: S) -> Self where S: Sequence, S.Element == (any Number, any Number) {
        Self("points", value: Text(verbatim: points.map { "\($0.0),\($0.1)" } .joined(separator: " ")))
    }
}
