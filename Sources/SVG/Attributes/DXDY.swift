public protocol DXDYTag: TagName {}

// extension Tags.feDropShadow: DXDYTag {}
// extension Tags.feOffset: DXDYTag {}
// extension Tags.glyphRef: DXDYTag {}
extension Tags.text: DXDYTag {}
// extension Tags.tref: DXDYTag {}
extension Tags.tspan: DXDYTag {}

public extension Attribute where Tag: DXDYTag {
    /// The `dx` attribute indicates a shift along the x-axis on the position of an element or its content.
    ///
    /// - Parameters:
    ///   - dx: The x offset.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dx)
    @inlinable static func dx(_ dx: any Length) -> Self {
        Self("dx", value: Text(verbatim: String(dx)))
    }

    /// The `dy` attribute indicates a shift along the y-axis on the position of an element or its content.
    ///
    /// - Parameters:
    ///   - dy: The y offset.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dy)
    @inlinable static func dy(_ dy: any Length) -> Self {
        Self("dy", value: Text(verbatim: String(dy)))
    }
}
