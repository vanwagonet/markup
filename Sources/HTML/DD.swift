import Markup

/// `<dd>`: The Description Details element
///
/// The `<dd>` HTML element provides the description, definition, or value for the preceding term.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dd)
public typealias DD<Content: HTMLContent> = Element<Tags.dd, Content>
extension Tags { public enum dd: HTMLTagName { public static let name = "dd" } }
