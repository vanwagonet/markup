import Markup

/// `<polygon>`
///
/// The `<polygon>` SVG element defines a closed shape consisting of a set of connected straight line segments. The last point is connected to the first point.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polygon)
public typealias Polygon<Content: AnimationOrDescriptiveContent> = Element<Tags.polygon, Content>
extension Tags { public enum polygon: SVGTagName { public static let name = "polygon" } }
