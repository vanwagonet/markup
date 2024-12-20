import Markup

/// `<aside>`: The Aside element
///
/// The `<aside>` HTML element represents a portion of a document whose content is only indirectly related to the document's main content.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/aside)
public typealias Aside<Content: HTMLContent> = Element<Tags.aside, Content>
extension Tags { public enum aside: HTMLTagName { public static let name = "aside" } }
