import Markup

/// `<label>`: The Label element
///
/// The `<label>` HTML element represents a caption for an item in a user interface.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label)
public typealias Label<Content: HTMLContent> = Element<Tags.label, Content>
extension Tags { public enum label: HTMLTagName { public static let name = "label" } }

public extension Attribute<Tags.label> {
    /// The value of the for attribute must be a single id for a labelable form-related element in the same document as the `<label>` element. So, any given label element can be associated with only one form control.
    ///
    /// - Parameters:
    ///   - id: The id for the control this labels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label#for)
    @inlinable static func `for`(_ id: any StringProtocol) -> Self {
        Self("for", value: Text(verbatim: id))
    }
}
