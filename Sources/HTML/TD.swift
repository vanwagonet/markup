import Markup

/// `<td>`: The Table Data Cell element
///
/// The `<td>` HTML element defines a cell of a table that contains data and may be used as a child of the `<tr>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td)
public typealias TD<Content: HTMLContent> = Element<Tags.td, Content>
extension Tags { public enum td: HTMLTagName { public static let name = "td" } }

// TODO: Attributes
