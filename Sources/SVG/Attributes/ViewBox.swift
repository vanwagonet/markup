public protocol ViewBoxTag: TagName {}

// extension Tags.marker: ViewBoxTag {}
// extension Tags.pattern: ViewBoxTag {}
extension Tags.svg: ViewBoxTag {}
// extension Tags.symbol: ViewBoxTag {}
extension Tags.view: ViewBoxTag {}

public typealias Number = Numeric & LosslessStringConvertible

public extension Attribute where Tag: ViewBoxTag {
    /// The `viewBox` attribute defines the position and dimension, in user space, of an SVG viewport.
    ///
    /// - Parameters:
    ///   - minX: The x coordinate of the view box origin.
    ///   - minY: The y coordinate of the view box origin.
    ///   - width: The width the view box.
    ///   - height: The width of the view box.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewBox)
    @inlinable static func viewBox(
        minX: any Number,
        minY: any Number,
        width: any Number,
        height: any Number
    ) -> Self {
        Self("viewBox", value: Text(verbatim: "\(minX) \(minY) \(width) \(height)"))
    }
}
