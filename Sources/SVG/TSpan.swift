import Markup

/// `<tspan>`
///
/// The `<tspan>` SVG element defines a subtext within a `<text>` element or another `<tspan>` element. It allows for adjustment of the style and/or position of that subtext as needed.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan)
public typealias TSpan<Content: TextContent> = Element<Tags.tspan, Content>
extension Tags { public enum tspan: SVGTagName { public static let name = "tspan" } }

public extension Attribute<Tags.tspan> {
    /// Rotates orientation of each individual glyph. Can rotate glyphs individually.
    ///
    /// - Parameters:
    ///   - values: The rotation of glyphs, in degrees.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan#rotate)
    @inlinable static func rotate(_ values: any Number...) -> Self {
        .rotate(values)
    }

    /// Rotates orientation of each individual glyph. Can rotate glyphs individually.
    ///
    /// - Parameters:
    ///   - values: The rotation of glyphs, in degrees.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan#rotate)
    @inlinable static func rotate<S>(_ values: S) -> Self where S: Sequence, S.Element == any Number {
        Self("rotate", value: Text(verbatim: values.map { String($0) }.joined(separator: " ")))
    }
}
