import Markup

/// `<table>`: The Table element
///
/// The `<table>` HTML element represents tabular data—that is, information presented in a two-dimensional table comprised of rows and columns of cells containing data.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table)
public typealias Table<Content: TableContent> = Element<Tags.table, Content>
extension Tags { public enum table: HTMLTagName { public static let name = "table" } }

public protocol TableContent: Markup {}
public protocol TableContentTagName: HTMLTagName {}

extension Array: TableContent where Element: TableContent {}
extension Comment: TableContent {}
extension Element: TableContent where Tag: TableContentTagName {}
extension Either: TableContent where True: TableContent, False: TableContent {}
extension Empty: TableContent {}
extension Optional: TableContent where Wrapped: TableContent {}
extension Pair: TableContent where First: TableContent, Second: TableContent {}
extension VoidElement: TableContent where Tag: TableContentTagName {}

extension Tags.caption: TableContentTagName {}
extension Tags.colgroup: TableContentTagName {}
extension Tags.tbody: TableContentTagName {}
extension Tags.tfoot: TableContentTagName {}
extension Tags.thead: TableContentTagName {}
extension Tags.tr: TableContentTagName {}
