import Markup

/// `<th>`: The Table Header element
///
/// The `<th>` HTML element defines a cell as the header of a group of table cells and may be used as a child of the `<tr>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th)
public typealias TH<Content: HTMLContent> = Element<Tags.th, Content>
extension Tags { public enum th: HTMLTagName { public static let name = "th" } }

// TODO: Attributes
