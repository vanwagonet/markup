import Markup

/// `<desc>`
///
/// The `<desc>` SVG element provides an accessible, long-text description of any SVG container element or graphics element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/desc)
public typealias Desc<Content: SVGContent> = Element<Tags.desc, Content>
extension Tags { public enum desc: SVGTagName { public static let name = "desc" } }
