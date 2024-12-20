import Markup

/// `<colgroup>`: The Table Column Group element
///
/// The `<colgroup>` HTML element defines a group of columns within a table.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/colgroup)
public typealias ColGroup<Content: HTMLContent> = Element<Tags.colgroup, Content>
extension Tags { public enum colgroup: HTMLTagName { public static let name = "colgroup" } }

public extension Attribute<Tags.colgroup> {
    /// This attribute contains a positive integer indicating the number of consecutive columns the `<colgroup>` element spans.
    ///
    /// The `span` attribute is not permitted if there are one or more `<col>` elements within the `<colgroup>`.
    ///
    /// - Parameters:
    ///   - span: The number of columns this group spans.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/colgroup#span)
    @inlinable static func span(_ span: UInt) -> Self {
        Self("span", value: Text(verbatim: String(span)))
    }
}
