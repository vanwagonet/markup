import Markup

/// `<footer>`: The Footer element
///
/// The `<footer>` HTML element represents a footer for its nearest ancestor sectioning content or sectioning root element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer)
public typealias Footer<Content: HTMLContent> = Element<Tags.footer, Content>
extension Tags { public enum footer: HTMLTagName { public static let name = "footer" } }
