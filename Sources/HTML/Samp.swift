import Markup

/// `<samp>`: The Sample Output element
///
/// The `<samp>` HTML element is used to enclose inline text which represents sample (or quoted) output from a computer program.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp)
public typealias Samp<Content: HTMLContent> = Element<Tags.samp, Content>
extension Tags { public enum samp: HTMLTagName { public static let name = "samp" } }
