import Markup

/// `<em>`: The Emphasis element
///
/// The `<em>` HTML element marks text that has stress emphasis.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em)
public typealias Em<Content: HTMLContent> = Element<Tags.em, Content>
extension Tags { public enum em: HTMLTagName { public static let name = "em" } }
