import Markup

/// `<th>`: The Table Header element
///
/// The `<th>` HTML element defines a cell as the header of a group of table cells and may be used as a child of the `<tr>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th)
public typealias TH<Content: HTMLContent> = Element<Tags.th, Content>
extension Tags { public enum th: HTMLTagName { public static let name = "th" } }

public extension Attribute<Tags.th> {
    /// A short, abbreviated description of the header cell's content provided as an alternative label to use for the header cell when referencing the cell in other contexts.
    ///
    /// - Parameters:
    ///   - description: A short description.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#abbr)
    @inlinable static func abbr(_ description: Text) -> Self {
        Self("abbr", value: description)
    }

    /// Indicates how many columns the header cell spans or extends.
    ///
    /// - Parameters:
    ///   - span: The number of columns this header spans.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#colspan)
    @inlinable static func colSpan(_ span: UInt) -> Self {
        Self("colspan", value: Text(verbatim: String(span)))
    }

    /// Contains a list of space-separated strings, each corresponding to the id attribute of the `<th>` elements that provide headings for this table cell.
    ///
    /// - Parameters:
    ///   - ids: `<th>` ids corresponding to this header.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#headers)
    @inlinable static func headers<S: StringProtocol>(_ ids: S...) -> Self {
        .headers(ids)
    }

    /// Contains a list of space-separated strings, each corresponding to the id attribute of the `<th>` elements that provide headings for this table cell.
    ///
    /// - Parameters:
    ///   - ids: `<th>` ids corresponding to this header.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#headers)
    @inlinable static func headers<S>(_ ids: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("headers", value: Text(verbatim: ids.joined(separator: " ")))
    }

    /// Indicates how many rows the header cell spans or extends.
    ///
    /// - Parameters:
    ///   - span: The number of rows this header spans.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#rowspan)
    @inlinable static func rowSpan(_ span: UInt) -> Self {
        Self("rowspan", value: Text(verbatim: String(span)))
    }

    /// Defines the cells that the header (defined in the `<th>`) element relates to.
    ///
    /// - Parameters:
    ///   - scope: The scope of this header.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#scope)
    @inlinable static func scope(_ scope: TableHeaderScope) -> Self {
        Self("scope", value: Text(verbatim: scope.rawValue))
    }
}

/// Defines the cells that the header (defined in the `<th>`) element relates to.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th#scope)
public enum TableHeaderScope: String {
    /// The header relates to all cells of the column it belongs to.
    case col

    /// The header relates to a colgroup and relates to all of its cells.
    case colGroup = "colgroup"

    /// The header relates to all cells of the row it belongs to.
    case row

    /// The header relates to a rowgroup and relates to all of its cells.
    case rowGroup = "rowgroup"
}
