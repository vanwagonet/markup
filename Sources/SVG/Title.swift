import Markup

/// `<title>`
///
/// The `<title>` SVG element provides an accessible, short-text description of any SVG container element or graphics element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/title)
public typealias Title<Content: SVGContent> = Element<Tags.title, Content>
extension Tags { public enum title: SVGTagName { public static let name = "title" } }
