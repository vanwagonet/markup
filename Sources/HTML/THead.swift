import Markup

/// `<thead>`: The Table Head element
///
/// The `<thead>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the head of a table with information about the table's columns.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/thead)
public typealias THead<Content: HTMLContent> = Element<Tags.thead, Content>
extension Tags { public enum thead: HTMLTagName { public static let name = "thead" } }

// TODO: Attributes
// TODO: Content Restrictions
