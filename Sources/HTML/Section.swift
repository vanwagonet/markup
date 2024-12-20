import Markup

/// `<section>`: The Generic Section element
///
/// The `<section>` HTML element represents a generic standalone section of a document, which doesn't have a more specific semantic element to represent it.
/// Sections should always have a heading, with very few exceptions.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/section)
public typealias Section<Content: HTMLContent> = Element<Tags.section, Content>
extension Tags { public enum section: HTMLTagName { public static let name = "section" } }
