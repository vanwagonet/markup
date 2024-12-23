import Markup

/// `<tbody>`: The Table Body element
///
/// The `<tbody>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the body of a table's (main) data.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody)
public typealias TBody<Content: TableSectionContent> = Element<Tags.tbody, Content>
extension Tags { public enum tbody: HTMLTagName { public static let name = "tbody" } }

public protocol TableSectionContent: Markup {}
public protocol TableSectionContentTagName: HTMLTagName {}

extension Array: TableSectionContent where Element: TableSectionContent {}
extension Comment: TableSectionContent {}
extension Element: TableSectionContent where Tag: TableSectionContentTagName {}
extension Either: TableSectionContent where True: TableSectionContent, False: TableSectionContent {}
extension Empty: TableSectionContent {}
extension Optional: TableSectionContent where Wrapped: TableSectionContent {}
extension Pair: TableSectionContent where First: TableSectionContent, Second: TableSectionContent {}
extension VoidElement: TableSectionContent where Tag: TableSectionContentTagName {}

extension Tags.tr: TableSectionContentTagName {}
