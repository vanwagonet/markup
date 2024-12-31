import Markup

/// `<ellipse>`
///
/// The `<ellipse>` SVG element is an SVG basic shape, used to create ellipses based on a center coordinate, and both their x and y radius.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse)
public typealias Ellipse<Content: AnimationOrDescriptiveContent> = Element<Tags.ellipse, Content>
extension Tags { public enum ellipse: SVGTagName { public static let name = "ellipse" } }
