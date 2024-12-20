import Markup

/// `<abbr>`: The Abbreviation element
///
/// The `<abbr>` HTML element represents an abbreviation or acronym.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/abbr)
public typealias Abbr<Content: HTMLContent> = Element<Tags.abbr, Content>
extension Tags { public enum abbr: HTMLTagName { public static let name = "abbr" } }
