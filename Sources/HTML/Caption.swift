import Markup

/// `<caption>`: The Table Caption element
///
/// The `<caption>` HTML element specifies the caption (or title) of a table.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption)
public typealias Caption<Content: HTMLContent> = Element<Tags.caption, Content>
extension Tags { public enum caption: HTMLTagName { public static let name = "caption" } }
