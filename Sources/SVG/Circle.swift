import Markup

/// `<circle>`
///
/// The `<circle>` SVG element is an SVG basic shape, used to draw circles based on a center point and a radius.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle)
public typealias Circle<Content: AnimationOrDescriptiveContent> = Element<Tags.circle, Content>
extension Tags { public enum circle: SVGTagName { public static let name = "circle" } }
