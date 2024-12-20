import Markup

/// `<p>`: The Paragraph element
///
/// The `<p>` HTML element represents a paragraph.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p)
public typealias P<Content: HTMLContent> = Element<Tags.p, Content>
extension Tags { public enum p: HTMLTagName { public static let name = "p" } }
