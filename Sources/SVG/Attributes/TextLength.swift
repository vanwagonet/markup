public protocol TextLengthTag: TagName {}

extension Tags.text: TextLengthTag {}
// extension Tags.textPath: TextLengthTag {}
// extension Tags.tref: TextLengthTag {}
extension Tags.tspan: TextLengthTag {}

public extension Attribute where Tag: TextLengthTag {
    /// The `lengthAdjust` attribute controls how the text is stretched into the length defined by the `textLength` attribute.
    ///
    /// - Parameters:
    ///   - adjust: The mode of adjusting.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lengthAdjust)
    @inlinable static func lengthAdjust(_ adjust: TextLengthAdjust) -> Self {
        Self("lengthAdjust", value: Text(verbatim: adjust.rawValue))
    }

    /// The `textLength` attribute, available on SVG `<text>` and `<tspan>` elements, lets you specify the width of the space into which the text will draw. The user agent will ensure that the text does not extend farther than that distance, using the method or methods specified by the lengthAdjust attribute. By default, only the spacing between characters is adjusted, but the glyph size can also be adjusted if you change `lengthAdjust`.
    ///
    /// - Parameters:
    ///   - length: The length of the path.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/textLength)
    @inlinable static func textLength(_ length: any Length) -> Self {
        Self("textLength", value: Text(verbatim: String(length)))
    }
}

/// The `lengthAdjust` attribute controls how the text is stretched into the length defined by the `textLength` attribute.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lengthAdjust)
public enum TextLengthAdjust: String {
    /// Adjust only the spacing between glyphs.
    case spacing
    /// Stretch both the spacing and glyphs.
    case spacingAndGlyphs
}
