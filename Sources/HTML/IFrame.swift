import Markup

/// `<iframe>`: The Inline Frame element
///
/// The `<iframe>` HTML element represents a nested browsing context, embedding another HTML page into the current one.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
public typealias IFrame = Element<Tags.iframe, Empty>
extension Tags { public enum iframe: HTMLTagName { public static let name = "iframe" } }

// TODO: Attributes
