import Markup

/// `<select>`: The HTML Select element
///
/// The `<select>` HTML element represents a control that provides a menu of options.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select)
public typealias Select<Content: HTMLContent> = Element<Tags.select, Content>
extension Tags { public enum select: HTMLTagName { public static let name = "select" } }

// TODO: Attributes
