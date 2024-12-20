import Markup

/// `<tbody>`: The Table Body element
///
/// The `<tbody>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the body of a table's (main) data.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody)
public typealias TBody<Content: HTMLContent> = Element<Tags.tbody, Content>
extension Tags { public enum tbody: HTMLTagName { public static let name = "tbody" } }

// TODO: Attributes
// TODO: Content Restrictions
