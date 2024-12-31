import Markup

/// `<polyline>`
///
/// The `<polyline>` SVG element is an SVG basic shape that creates straight lines connecting several points. Typically a polyline is used to create open shapes as the last point doesn't have to be connected to the first point. For closed shapes see the `<polygon>` element..
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline)
public typealias Polyline<Content: AnimationOrDescriptiveContent> = Element<Tags.polyline, Content>
extension Tags { public enum polyline: SVGTagName { public static let name = "polyline" } }
