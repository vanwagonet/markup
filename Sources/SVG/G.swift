import Markup

/// `<g>`
///
/// The `<g>` SVG element is a container used to group other SVG elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/g)
public typealias G<Content: SVGContent> = Element<Tags.g, Content>
extension Tags { public enum g: SVGTagName { public static let name = "g" } }
