import Markup

/// `<dl>`: The Description List element
///
/// The `<dl>` HTML element represents a description list.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl)
public typealias DL<Content: HTMLContent> = Element<Tags.dl, Content>
extension Tags { public enum dl: HTMLTagName { public static let name = "dl" } }
