import Markup

/// `<kbd>`: The Keyboard Input element
///
/// The `<kbd>` HTML element represents a span of inline text denoting textual user input from a keyboard, voice input, or any other text entry device.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/kbd)
public typealias Kbd<Content: HTMLContent> = Element<Tags.kbd, Content>
extension Tags { public enum kbd: HTMLTagName { public static let name = "kbd" } }
