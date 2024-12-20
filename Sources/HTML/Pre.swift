import Markup

/// `<pre>`: The Preformatted Text element
///
/// The `<pre>` HTML element represents preformatted text which is to be presented exactly as written in the HTML file.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/pre)
public typealias Pre<Content: HTMLContent> = Element<Tags.pre, Content>
extension Tags { public enum pre: HTMLTagName { public static let name = "pre" } }
