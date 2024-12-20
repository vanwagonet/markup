import Markup

/// `<cite>`: The Citation element
///
/// The `<cite>` HTML element is used to mark up the title of a cited creative work.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite)
public typealias Cite<Content: HTMLContent> = Element<Tags.cite, Content>
extension Tags { public enum cite: HTMLTagName { public static let name = "cite" } }
