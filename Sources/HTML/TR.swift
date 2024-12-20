import Markup

/// `<tr>`: The Table Row element
///
/// The `<tr>` HTML element defines a row of cells in a table. The row's cells can then be established using a mix of `<td>` (data cell) and `<th>` (header cell) elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr)
public typealias TR<Content: RowContent> = Element<Tags.tr, Content>
extension Tags { public enum tr: HTMLTagName { public static let name = "tr" } }

public protocol RowContent: Markup {}
public protocol RowTagName: HTMLTagName {}

extension Array: RowContent where Element: RowContent {}
extension Comment: RowContent {}
extension Element: RowContent where Tag: RowTagName {}
extension Either: RowContent where True: RowContent, False: RowContent {}
extension Empty: RowContent {}
extension Optional: RowContent where Wrapped: RowContent {}
extension Pair: RowContent where First: RowContent, Second: RowContent {}
extension VoidElement: RowContent where Tag: RowTagName {}

extension Tags.td: RowTagName {}
extension Tags.th: RowTagName {}
extension Tags.script: RowTagName {}
extension Tags.template: RowTagName {}
