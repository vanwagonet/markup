import Markup

/// `<s>`: The Strikethrough element
///
/// The `<s>` HTML element renders text with a strikethrough, or a line through it.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/s)
public typealias S<Content: HTMLContent> = Element<Tags.s, Content>
extension Tags { public enum s: HTMLTagName { public static let name = "s" } }
