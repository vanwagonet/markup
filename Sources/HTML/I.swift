import Markup

/// `<i>`: The Idiomatic Text element
///
/// The `<i>` HTML element represents a range of text that is set off from the normal text for some reason,
/// such as idiomatic text, technical terms, taxonomical designations, among others.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/i)
public typealias I<Content: HTMLContent> = Element<Tags.i, Content>
extension Tags { public enum i: HTMLTagName { public static let name = "i" } }
