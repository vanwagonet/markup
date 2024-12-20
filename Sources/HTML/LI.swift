import Markup

/// `<li>`: The List Item element
///
/// The `<li>` HTML element is used to represent an item in a list.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/li)
public typealias LI<Content: HTMLContent> = Element<Tags.li, Content>
extension Tags { public enum li: HTMLTagName { public static let name = "li" } }

public extension Attribute<Tags.li> {
    /// This integer attribute indicates the current ordinal value of the list item as defined by the `<ol>` element.
    ///
    /// - Parameters:
    ///   - value: The 1-based ordinal position of this item.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/li#value)
    @inlinable static func value(_ value: any BinaryInteger) -> Self {
        Self("value", value: Text(verbatim: String(value)))
    }
}
