import Markup

/// `<u>`: The Unarticulated Annotation (Underline) element
///
/// The `<u>` HTML element represents a span of inline text which should be rendered in a way that indicates that it has a non-textual annotation.
/// This is rendered by default as a simple solid underline, but may be altered using CSS.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u)
public typealias U<Content: HTMLContent> = Element<Tags.u, Content>
extension Tags { public enum u: HTMLTagName { public static let name = "u" } }
