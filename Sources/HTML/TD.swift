import Markup

/// `<td>`: The Table Data Cell element
///
/// The `<td>` HTML element defines a cell of a table that contains data and may be used as a child of the `<tr>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td)
public typealias TD<Content: HTMLContent> = Element<Tags.td, Content>
extension Tags { public enum td: HTMLTagName { public static let name = "td" } }

public extension Attribute<Tags.td> {
    /// Indicates how many columns the data cell spans or extends.
    ///
    /// - Parameters:
    ///   - span: The number of columns this cell spans.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td#colspan)
    @inlinable static func colSpan(_ span: UInt) -> Self {
        Self("colspan", value: Text(verbatim: String(span)))
    }

    /// Contains a list of space-separated strings, each corresponding to the id attribute of the `<th>` elements that provide headings for this table cell.
    ///
    /// - Parameters:
    ///   - ids: `<th>` ids corresponding to this cell.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td#headers)
    @inlinable static func headers<S: StringProtocol>(_ ids: S...) -> Self {
        .headers(ids)
    }

    /// Contains a list of space-separated strings, each corresponding to the id attribute of the `<th>` elements that provide headings for this table cell.
    ///
    /// - Parameters:
    ///   - ids: `<th>` ids corresponding to this cell.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td#headers)
    @inlinable static func headers<S>(_ ids: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("headers", value: Text(verbatim: ids.joined(separator: " ")))
    }

    /// Indicates how many rows the data cell spans or extends.
    ///
    /// - Parameters:
    ///   - span: The number of rows this cell spans.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td#rowspan)
    @inlinable static func rowSpan(_ span: UInt) -> Self {
        Self("rowspan", value: Text(verbatim: String(span)))
    }
}
