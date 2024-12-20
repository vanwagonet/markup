import Markup

/// `<ul>`: The Unordered List element
///
/// The `<ul>` HTML element represents an unordered list of items, typically rendered as a bulleted list.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul)
public typealias UL<Content: HTMLContent> = Element<Tags.ul, Content>
extension Tags { public enum ul: HTMLTagName { public static let name = "ul" } }
