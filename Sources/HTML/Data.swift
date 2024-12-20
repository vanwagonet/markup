import Markup

/// `<data>`: The Data element
///
/// The `<data>` HTML element links a given piece of content with a machine-readable translation.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/data)
public typealias Data<Content: HTMLContent> = Element<Tags.data, Content>
extension Tags { public enum data: HTMLTagName { public static let name = "data" } }

public extension Attribute<Tags.data> {
    /// This attribute specifies the machine-readable translation of the content of the element.
    ///
    /// - Parameters:
    ///   - value: The machine-readable textual value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/data#value)
    @inlinable static func value(_ value: Text) -> Self {
        Self("value", value: value)
    }
}
