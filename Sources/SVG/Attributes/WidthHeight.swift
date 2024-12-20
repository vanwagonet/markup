public protocol WidthHeightTag: TagName {}

// extension Tags.feBlend: WidthHeightTag {}
// extension Tags.feColorMatrix: WidthHeightTag {}
// extension Tags.feComponentTransfer: WidthHeightTag {}
// extension Tags.feComposite: WidthHeightTag {}
// extension Tags.feConvolveMatrix: WidthHeightTag {}
// extension Tags.feDiffuseLighting: WidthHeightTag {}
// extension Tags.feDisplacementMap: WidthHeightTag {}
// extension Tags.feDropShadow: WidthHeightTag {}
// extension Tags.feFlood: WidthHeightTag {}
// extension Tags.feFuncA: WidthHeightTag {}
// extension Tags.feFuncB: WidthHeightTag {}
// extension Tags.feFuncG: WidthHeightTag {}
// extension Tags.feFuncR: WidthHeightTag {}
// extension Tags.feGaussianBlur: WidthHeightTag {}
// extension Tags.feImage: WidthHeightTag {}
// extension Tags.feMerge: WidthHeightTag {}
// extension Tags.feMergeNode: WidthHeightTag {}
// extension Tags.feMorphology: WidthHeightTag {}
// extension Tags.feOffset: WidthHeightTag {}
// extension Tags.fePointLight: WidthHeightTag {}
// extension Tags.feSpecularLighting: WidthHeightTag {}
// extension Tags.feSpotLight: WidthHeightTag {}
// extension Tags.feTile: WidthHeightTag {}
// extension Tags.feTurbulence: WidthHeightTag {}
// extension Tags.filter: WidthHeightTag {}
// extension Tags.foreignObject: WidthHeightTag {}
// extension Tags.image: WidthHeightTag {}
// extension Tags.mask: WidthHeightTag {}
// extension Tags.pattern: WidthHeightTag {}
// extension Tags.rect: WidthHeightTag {}
extension Tags.svg: WidthHeightTag {}
extension Tags.use: WidthHeightTag {}

public extension Attribute where Tag: WidthHeightTag {
    /// The `height` attribute defines the vertical length of an element in the user coordinate system.
    ///
    /// - Parameters:
    ///   - height: The height.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/height)
    @inlinable static func height(_ height: any Length) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// The `width` attribute defines the horizontal length of an element in the user coordinate system.
    ///
    /// - Parameters:
    ///   - width: The width.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/width)
    @inlinable static func width(_ width: any Length) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}
