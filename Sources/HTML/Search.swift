import Markup

/// `<search>`: The generic search element
///
/// The `<search>` HTML element is a container representing the parts of the document or application with form controls or other content
/// related to performing a search or filtering operation.
/// The `<search>` element semantically identifies the purpose of the element's contents as having search or filtering capabilities.
/// The search or filtering functionality can be for the website or application, the current web page or document, or the entire Internet or subsection thereof.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/search)
public typealias Search<Content: HTMLContent> = Element<Tags.search, Content>
extension Tags { public enum search: HTMLTagName { public static let name = "search" } }
