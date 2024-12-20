import Markup

/// `<b>`: The Bring Attention To element
///
/// The `<b>` HTML element is used to draw the reader's attention to the element's contents, which are not otherwise granted special importance.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/b)
public typealias B<Content: HTMLContent> = Element<Tags.b, Content>
extension Tags { public enum b: HTMLTagName { public static let name = "b" } }
