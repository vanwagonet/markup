import Markup

/// `<option>`: The HTML Option element
///
/// The `<option>` HTML element is used to define an item contained in a `<select>`, an `<optgroup>`, or a `<datalist>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option)
public typealias Option<Content: HTMLContent> = Element<Tags.option, Content>
extension Tags { public enum option: HTMLTagName { public static let name = "option" } }

public extension Attribute<Tags.option> {
    /// If this Boolean attribute is set, this option is not checkable.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option#disabled)
    @inlinable static var disabled: Self {
        Self("disabled")
    }

    /// This attribute is text for the label indicating the meaning of the option.
    /// If the `label` attribute isn't defined, its value is that of the element text content.
    ///
    /// - Parameters:
    ///   - label: The text label for this option.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option#label)
    @inlinable static func label(_ label: Text) -> Self {
        Self("label", value: label)
    }

    /// If present, this Boolean attribute indicates that the option is initially selected.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option#selected)
    @inlinable static var selected: Self {
        Self("selected")
    }

    /// The content of this attribute represents the value to be submitted with the form, should this option be selected.
    /// If this attribute is omitted, the value is taken from the text content of the option element..
    ///
    /// - Parameters:
    ///   - value: The text value for this option.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/option#value)
    @inlinable static func value(_ value: any StringProtocol) -> Self {
        Self("value", value: Text(verbatim: value))
    }
}
