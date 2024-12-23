import Markup

/// `<ol>`: The Ordered List element
///
/// The `<ol>` HTML element represents an ordered list of items — typically rendered as a numbered list.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol)
public typealias OL<Content: HTMLContent> = Element<Tags.ol, Content>
extension Tags { public enum ol: HTMLTagName { public static let name = "ol" } }

public extension Attribute<Tags.ol> {
    /// This Boolean attribute specifies that the list's items are in reverse order.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol#reversed)
    @inlinable static var reversed: Self {
        Self("reversed")
    }

    /// An integer to start counting from for the list items.
    ///
    /// - Parameters:
    ///   - start: The first number value for the list.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol#start)
    @inlinable static func start(_ value: any BinaryInteger) -> Self {
        Self("start", value: Text(verbatim: String(value)))
    }

    /// Sets the numbering type.
    ///
    /// - Parameters:
    ///   - type: The number type.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol#type)
    @inlinable static func type(_ value: Character) -> Self {
        Self("type", value: Text(verbatim: String(value)))
    }
}
