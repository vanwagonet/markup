import Markup

/// `<small>`: The side comment element
///
/// The `<small>` HTML element represents side-comments and small print, like copyright and legal text, independent of its styled presentation.
/// By default, it renders text within it one font-size smaller, such as from `small` to `x-small`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/small)
public typealias Small<Content: HTMLContent> = Element<Tags.small, Content>
extension Tags { public enum small: HTMLTagName { public static let name = "small" } }
