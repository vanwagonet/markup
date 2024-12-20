public protocol XYTag: TagName {}

// extension Tags.feBlend: XYTag {}
// extension Tags.feColorMatrix: XYTag {}
// extension Tags.feComponentTransfer: XYTag {}
// extension Tags.feComposite: XYTag {}
// extension Tags.feConvolveMatrix: XYTag {}
// extension Tags.feDiffuseLighting: XYTag {}
// extension Tags.feDisplacementMap: XYTag {}
// extension Tags.feDropShadow: XYTag {}
// extension Tags.feFlood: XYTag {}
// extension Tags.feFuncA: XYTag {}
// extension Tags.feFuncB: XYTag {}
// extension Tags.feFuncG: XYTag {}
// extension Tags.feFuncR: XYTag {}
// extension Tags.feGaussianBlur: XYTag {}
// extension Tags.feImage: XYTag {}
// extension Tags.feMerge: XYTag {}
// extension Tags.feMergeNode: XYTag {}
// extension Tags.feMorphology: XYTag {}
// extension Tags.feOffset: XYTag {}
// extension Tags.fePointLight: XYTag {}
// extension Tags.feSpecularLighting: XYTag {}
// extension Tags.feSpotLight: XYTag {}
// extension Tags.feTile: XYTag {}
// extension Tags.feTurbulence: XYTag {}
// extension Tags.filter: XYTag {}
// extension Tags.foreignObject: XYTag {}
// extension Tags.image: XYTag {}
// extension Tags.mask: XYTag {}
// extension Tags.pattern: XYTag {}
// extension Tags.rect: XYTag {}
extension Tags.svg: XYTag {}
extension Tags.text: XYTag {}
// extension Tags.tspan: XYTag {}
extension Tags.use: XYTag {}

public typealias Length = LosslessStringConvertible

public extension Attribute where Tag: XYTag {
    /// The `x` attribute defines an x-axis coordinate in the user coordinate system.
    ///
    /// - Parameters:
    ///   - x: The x coordinate.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x)
    @inlinable static func x(_ x: any Length) -> Self {
        Self("x", value: Text(verbatim: String(x)))
    }

    /// The `y` attribute defines an y-axis coordinate in the user coordinate system.
    ///
    /// - Parameters:
    ///   - y: The y coordinate.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y)
    @inlinable static func y(_ y: any Length) -> Self {
        Self("y", value: Text(verbatim: String(y)))
    }
}
