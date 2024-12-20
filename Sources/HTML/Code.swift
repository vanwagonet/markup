import Markup

/// `<code>`: The Inline Code element
///
/// The `<code>` HTML element displays its contents styled in a fashion intended to indicate that the text is a short fragment of computer code.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/code)
public typealias Code<Content: HTMLContent> = Element<Tags.code, Content>
extension Tags { public enum code: HTMLTagName { public static let name = "code" } }
