import Markup

/// `<defs>`
///
/// The `<defs>` is used to store graphical objects that will be used at a later time. Objects created inside a `<defs>` element are not rendered directly. To display them you have to reference them (with a `<use>` element for example).
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/defs)
public typealias Defs<Content: SVGContent> = Element<Tags.defs, Content>
extension Tags { public enum defs: SVGTagName { public static let name = "defs" } }
