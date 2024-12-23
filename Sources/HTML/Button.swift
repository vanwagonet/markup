import Markup

/// `<button>`: The Button element
///
/// The `<button>` HTML element is an interactive element activated by a user.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button)
public typealias Button<Content: HTMLContent> = Element<Tags.button, Content>
extension Tags { public enum button: HTMLTagName { public static let name = "button" } }

public extension Attribute<Tags.button> {
    /// This Boolean attribute prevents the user from interacting with the button: it cannot be pressed or focused.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#disabled)
    @inlinable static var disabled: Self {
        Self("disabled")
    }

    /// The `<form>` element to associate the button with (its form owner).
    ///
    /// - Parameters:
    ///   - id: The id of a `<form>` in the same document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// The URL that processes the information submitted by the button. Overrides the action attribute of the button's form owner.
    ///
    /// - Parameters:
    ///   - url: The URL string for the form action.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formaction)
    @inlinable static func formAction(_ url: any StringProtocol) -> Self {
        Self("formaction", value: Text(verbatim: url))
    }

    /// Specifies how to encode the form data that is submitted.
    ///
    /// - Parameters:
    ///   - type: The mime type for the form encoding.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formenctype)
    @inlinable static func formEncType(_ type: FormEncType) -> Self {
        Self("formenctype", value: Text(verbatim: type.rawValue))
    }

    /// Specifies the HTTP method used to submit the form.
    ///
    /// - Parameters:
    ///   - method: The HTTP method for the form action.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formmethod)
    @inlinable static func formMethod(_ method: FormMethod) -> Self {
        Self("formmethod", value: Text(verbatim: method.rawValue))
    }

    /// This Boolean attribute specifies that the form is not to be validated when it is submitted.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formnovalidate)
    @inlinable static var formNoValidate: Self {
        Self("formnovalidate")
    }

    /// Where to display the response from submitting the form, as a keyword for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A keyword target context to display the response.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formtarget)
    @inlinable static func formTarget(_ target: Target) -> Self {
        .formTarget(target.rawValue)
    }

    /// Where to display the response from submitting the form, as the name for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A tab, window, or `iframe` name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formtarget)
    @inlinable static func formTarget(_ target: any StringProtocol) -> Self {
        Self("formtarget", value: Text(verbatim: target))
    }

    /// The name of the button, submitted as a pair with the button's value as part of the form data, when that button is used to submit the form.
    ///
    /// - Parameters:
    ///   - name: The name of the button.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// Turns a `<button>` element into a popover control button.
    ///
    /// - Parameters:
    ///   - id: The ID of the popover element to control.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#popovertarget)
    @inlinable static func popoverTarget(_ id: any StringProtocol) -> Self {
        Self("popovertarget", value: Text(verbatim: id))
    }

    /// Specifies the the action to be performed on a popover element being controlled by a control `<button>`.
    ///
    /// - Parameters:
    ///   - action: The action to perform.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#popovertargetaction)
    @inlinable static func popoverTargetAction(_ action: PopoverTargetAction) -> Self {
        Self("popovertargetaction", value: Text(verbatim: action.rawValue))
    }

    /// The default behavior of the button.
    ///
    /// - Parameters:
    ///   - type: The behavior for the button.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#type)
    @inlinable static func type(_ type: ButtonType) -> Self {
        Self("type", value: Text(verbatim: type.rawValue))
    }

    /// Defines the value associated with the button's name when it's submitted with the form data.
    ///
    /// - Parameters:
    ///   - value: The value of the button.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#value)
    @inlinable static func value(_ value: any StringProtocol) -> Self {
        Self("value", value: Text(verbatim: value))
    }
}

/// Specifies the the action to be performed on a popover element being controlled by a control `<button>`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#popovertargetaction)
public enum PopoverTargetAction: String {
    /// The button will hide a shown popover.
    case hide
    /// The button will show a hidden popover.
    case show
    /// The button will toggle a popover between showing and hidden.
    case toggle
}

/// The default behavior of the button.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#type)
public enum ButtonType: String {
    /// The button submits the form data to the server. This is the default if the attribute is not specified for buttons associated with a `<form>`.
    case submit
    /// The button resets all the controls to their initial values.
    case reset
    /// The button has no default behavior, and does nothing when pressed by default. Useful to prevent submitting inside a `<form>`.
    case button
}
