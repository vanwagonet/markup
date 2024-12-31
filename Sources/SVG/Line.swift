import Markup

/// `<line>`
///
/// The `<line>` SVG element is an SVG basic shape used to create a line connecting two points.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line)
public typealias Line<Content: AnimationOrDescriptiveContent> = Element<Tags.line, Content>
extension Tags { public enum line: SVGTagName { public static let name = "line" } }
