import Markup

/// `<text>`
///
/// The `<text>` SVG element draws a graphics element consisting of text.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text)
public typealias TextElement<Content: TextContent> = Element<Tags.text, Content>
extension Tags { public enum text: SVGTagName { public static let name = "text" } }

public extension Attribute<Tags.text> {
    /// Rotates orientation of each individual glyph. Can rotate glyphs individually.
    ///
    /// - Parameters:
    ///   - values: The rotation of glyphs, in degrees.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text#rotate)
    @inlinable static func rotate(_ values: any Number...) -> Self {
        .rotate(values)
    }

    /// Rotates orientation of each individual glyph. Can rotate glyphs individually.
    ///
    /// - Parameters:
    ///   - values: The rotation of glyphs, in degrees.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text#rotate)
    @inlinable static func rotate<S>(_ values: S) -> Self where S: Sequence, S.Element == any Number {
        Self("rotate", value: Text(verbatim: values.map { String($0) }.joined(separator: " ")))
    }
}

public protocol TextContent: Markup {}
public protocol TextContentTagName: TagName {}

// Animation Elements
// extension Tags.animate: TextContentTagName {}
// extension Tags.animateMotion: TextContentTagName {}
// extension Tags.animateTransform: TextContentTagName {}
// extension Tags.mpath: TextContentTagName {}
// extension Tags.set: TextContentTagName {}

// Descriptive Elements
extension Tags.desc: TextContentTagName {}
extension Tags.metadata: TextContentTagName {}
extension Tags.title: TextContentTagName {}

// Text content child Elements
// extension Tags.textPath: TextContentTagName {}
// extension Tags.tref: TextContentTagName {}
extension Tags.tspan: TextContentTagName {}

// Specific Elements
extension Tags.a: TextContentTagName {}

extension Array: TextContent where Element: TextContent {}
extension CData: TextContent {}
extension Comment: TextContent {}
extension Element: TextContent where Tag: TextContentTagName {}
extension Either: TextContent where True: TextContent, False: TextContent {}
extension Empty: TextContent {}
extension Optional: TextContent where Wrapped: TextContent {}
extension Pair: TextContent where First: TextContent, Second: TextContent {}
extension Text: TextContent {}
extension VoidElement: TextContent where Tag: TextContentTagName {}
