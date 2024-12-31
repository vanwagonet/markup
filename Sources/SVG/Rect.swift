import Markup

/// `<rect>`
///
/// The `<rect>` SVG element is a basic SVG shape that draws rectangles, defined by their position, width, and height. The rectangles may have their corners rounded.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect)
public typealias Rect<Content: AnimationOrDescriptiveContent> = Element<Tags.rect, Content>
extension Tags { public enum rect: SVGTagName { public static let name = "rect" } }
