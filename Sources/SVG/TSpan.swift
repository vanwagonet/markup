import Markup

/// `<tspan>`
///
/// The `<tspan>` SVG element defines a subtext within a `<text>` element or another `<tspan>` element. It allows for adjustment of the style and/or position of that subtext as needed.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan)
public typealias TSpan<Content: TSpanContent> = Element<Tags.tspan, Content>
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

public protocol TSpanContent: Markup {}
public protocol TSpanContentTagName: TagName {}

// Descriptive Elements
extension Tags.desc: TSpanContentTagName {}
extension Tags.metadata: TSpanContentTagName {}
extension Tags.title: TSpanContentTagName {}

// Text content child Elements
// extension Tags.tref: TSpanContentTagName {}
extension Tags.tspan: TSpanContentTagName {}

// Specific Elements
extension Tags.a: TSpanContentTagName {}
// extension Tags.animate: TSpanContentTagName {}
// extension Tags.set: TSpanContentTagName {}

extension Array: TSpanContent where Element: TSpanContent {}
extension CData: TSpanContent {}
extension Comment: TSpanContent {}
extension Element: TSpanContent where Tag: TSpanContentTagName {}
extension Either: TSpanContent where True: TSpanContent, False: TSpanContent {}
extension Empty: TSpanContent {}
extension Optional: TSpanContent where Wrapped: TSpanContent {}
extension Pair: TSpanContent where First: TSpanContent, Second: TSpanContent {}
extension Text: TSpanContent {}
extension VoidElement: TSpanContent where Tag: TSpanContentTagName {}

