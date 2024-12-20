import Markup

/// `<rt>`: The Ruby Text element
///
/// The `<rt>` HTML element specifies the ruby text component of a ruby annotation, which is used to provide pronunciation, translation,
/// or transliteration information for East Asian typography.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/rt)
public typealias RT<Content: HTMLContent> = Element<Tags.rt, Content>
extension Tags { public enum rt: HTMLTagName { public static let name = "rt" } }
