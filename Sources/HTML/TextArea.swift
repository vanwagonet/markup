import Markup

/// `<textarea>`: The Textarea element
///
/// The `<textarea>` HTML element represents a multi-line plain-text editing control, useful when you want to allow users to enter a sizeable amount of free-form text, for example a comment on a review or feedback form.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
public typealias TextArea<Content: HTMLContent> = Element<Tags.textarea, Content>
extension Tags { public enum textarea: HTMLTagName { public static let name = "textarea" } }

public extension Attribute<Tags.textarea> {
    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the input should provide.
    ///
    /// - Parameters:
    ///   - enabled: Whether to enable or disable auto completion.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#autocomplete)
    @inlinable static func autoComplete(_ enabled: AutoCompleteEnabled) -> Self {
        Self("autocomplete", value: Text(verbatim: enabled.rawValue))
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the input should provide.
    ///
    /// - Parameters:
    ///   - tokens: What kind of auto completion should the browser offer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#autocomplete)
    @inlinable static func autoComplete<S: StringProtocol>(_ tokens: S...) -> Self {
        .autoComplete(tokens)
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the input should provide.
    ///
    /// - Parameters:
    ///   - tokens: What kind of auto completion should the browser offer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#autocomplete)
    @inlinable static func autoComplete<S>(_ tokens: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("autocomplete", value: Text(verbatim: tokens.joined(separator: " ")))
    }

    /// The visible width of the text control, in average character widths. If it is specified, it must be a positive integer. If it is not specified, the default value is 20.
    ///
    /// - Parameters:
    ///   - size: The width in characters.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#cols)
    @inlinable static func cols(_ size: UInt) -> Self {
        Self("cols", value: Text(verbatim: String(size)))
    }

    /// The dirname attribute enables the submission of the directionality of the element. When included, the form control will submit with two name/value pairs: the first being the name and value, and the second being the value of the dirname attribute as the name, with a value of `ltr` or `rtl` as set by the browser.
    ///
    /// - Parameters:
    ///   - name: The name for the direction value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#dirname)
    @inlinable static func dirName(_ name: any StringProtocol) -> Self {
        Self("dirname", value: Text(verbatim: name))
    }

    /// A Boolean attribute which, if present, indicates that the user should not be able to interact with the control.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/textares/textarea#disabled)
    @inlinable static var disabled: Self {
        Self("disabled")
    }

    /// The form element that the `<textarea>` element is associated with (its "form owner"). The value of the attribute must be the id of a form element in the same document. If this attribute is not specified, the `<textarea>` element must be a descendant of a form element. This attribute enables you to place `<textarea>` elements anywhere within a document, not just as descendants of form elements.
    ///
    /// - Parameters:
    ///   - id: The id matching the form this is part of.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// The maximum string length (measured in UTF-16 code units) that the user can enter. If this value isn't specified, the user can enter an unlimited number of characters.
    ///
    /// - Parameters:
    ///   - count: The number of UTF-16 code units allowed.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#maxlength)
    @inlinable static func maxLength(_ count: UInt) -> Self {
        Self("maxlength", value: Text(verbatim: String(count)))
    }

    /// The minimum string length (measured in UTF-16 code units) required that the user should enter.
    ///
    /// - Parameters:
    ///   - count: The number of UTF-16 code units allowed.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#minlength)
    @inlinable static func minLength(_ count: UInt) -> Self {
        Self("minlength", value: Text(verbatim: String(count)))
    }

    /// The name of the control.
    ///
    /// - Parameters:
    ///   - name: The name to use for the accompanying value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// A hint to the user of what can be entered in the control. Carriage returns or line-feeds within the placeholder text must be treated as line breaks when rendering the hint.
    ///
    /// - Parameters:
    ///   - value: The placeholder text.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#placeholder)
    @inlinable static func placeholder(_ value: Text) -> Self {
        Self("placeholder", value: value)
    }

    /// This Boolean attribute indicates that the user cannot modify the value of the control. Unlike the disabled attribute, the readonly attribute does not prevent the user from clicking or selecting in the control. The value of a read-only control is still submitted with the form.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#readonly)
    @inlinable static var readOnly: Self {
        Self("readonly")
    }

    /// `required` is a Boolean attribute which, if present, indicates that the user must specify a value for the input before the owning form can be submitted.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#required)
    @inlinable static var required: Self {
        Self("required")
    }

    /// The number of visible text lines for the control. If it is specified, it must be a positive integer. If it is not specified, the default value is 2.
    ///
    /// - Parameters:
    ///   - size: The number of lines to display.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#size)
    @inlinable static func rows(_ size: UInt) -> Self {
        Self("rows", value: Text(verbatim: String(size)))
    }

    /// Indicates how the control should wrap the value for form submission.
    ///
    /// - Parameters:
    ///   - wrap: How to handle text wrapping.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#wrap)
    @inlinable static func wrap(_ wrap: TextAreaWrap) -> Self {
        Self("wrap", value: Text(verbatim: wrap.rawValue))
    }
}

/// Indicates how the control should wrap the value for form submission.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea#wrap)
public enum TextAreaWrap: String {
    /// The browser automatically inserts line breaks (CR+LF) so that each line is no longer than the width of the control; the cols attribute must be specified for this to take effect.
    case hard

    /// The browser ensures that all line breaks in the entered value are a CR+LF pair, but no additional line breaks are added to the value.
    case soft

    /// Non-standard: Like soft but changes appearance to white-space: pre so line segments exceeding cols are not wrapped and the `<textarea>` becomes horizontally scrollable.
    case off
}

public protocol TextAreaContent: Markup {}
extension Empty: TextAreaContent {}
extension Text: TextAreaContent {}
