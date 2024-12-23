import Markup

/// `<tfoot>`: The Table Foot element
///
/// The `<tfoot>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the foot of a table with information about the table's columns.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot)
public typealias TFoot<Content: TableSectionContent> = Element<Tags.tfoot, Content>
extension Tags { public enum tfoot: HTMLTagName { public static let name = "tfoot" } }
