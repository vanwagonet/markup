import Markup

/// `<input>`: The Input (Form Input) element
///
/// The `<input>` HTML element is used to create interactive controls for forms in order to accept data from the user.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public typealias Input = VoidElement<Tags.input>
extension Tags { public enum input: HTMLTagName { public static let name = "input" } }

public extension Attribute<Tags.input> {
    /// The accept attribute takes as its value a comma-separated list of one or more file types, or unique file type specifiers, describing which file types to allow.
    ///
    /// - Parameters:
    ///   - mimse: The acceptable mime types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#accept)
    @inlinable static func accept<S: StringProtocol>(_ mimes: S...) -> Self {
        .accept(mimes)
    }

    /// The accept attribute takes as its value a comma-separated list of one or more file types, or unique file type specifiers, describing which file types to allow.
    ///
    /// - Parameters:
    ///   - mimse: The acceptable mime types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#accept)
    @inlinable static func accept<S>(_ mimes: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("accept", value: Text(verbatim: mimes.joined(separator: ", ")))
    }

    /// Valid for the image button only, the alt attribute provides alternative text for the image, displaying the value of the attribute if the image src is missing or otherwise fails to load.
    ///
    /// - Parameters:
    ///   - description: The text description of the image.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#alt)
    @inlinable static func alt(_ description: Text) -> Self {
        Self("alt", value: description)
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the input should provide.
    ///
    /// - Parameters:
    ///   - enabled: Whether to enable or disable auto completion.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#autocomplete)
    @inlinable static func autoComplete(_ enabled: AutoCompleteEnabled) -> Self {
        Self("autocomplete", value: Text(verbatim: enabled.rawValue))
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the input should provide.
    ///
    /// - Parameters:
    ///   - tokens: What kind of auto completion should the browser offer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#autocomplete)
    @inlinable static func autoComplete<S: StringProtocol>(_ tokens: S...) -> Self {
        .autoComplete(tokens)
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the input should provide.
    ///
    /// - Parameters:
    ///   - tokens: What kind of auto completion should the browser offer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#autocomplete)
    @inlinable static func autoComplete<S>(_ tokens: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("autocomplete", value: Text(verbatim: tokens.joined(separator: " ")))
    }

    /// The capture attribute defines which media—microphone, video, or camera—should be used to capture a new file for upload with file upload control in supporting scenarios.
    ///
    /// - Parameters:
    ///   - device: What device can be used to capture the file.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#capture)
    @inlinable static func capture(_ device: CaptureDevice) -> Self {
        Self("capture", value: Text(verbatim: device.rawValue))
    }

    /// If present on a radio type, it indicates that the radio button is the currently selected one in the group of same-named radio buttons. If present on a checkbox type, it indicates that the checkbox is checked by default (when the page loads). It does not indicate whether this checkbox is currently checked: if the checkbox's state is changed, this content attribute does not reflect the change.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#checked)
    @inlinable static var checked: Self {
        Self("checked")
    }

    /// The dirname attribute enables the submission of the directionality of the element. When included, the form control will submit with two name/value pairs: the first being the name and value, and the second being the value of the dirname attribute as the name, with a value of `ltr` or `rtl` as set by the browser.
    ///
    /// - Parameters:
    ///   - name: The name for the direction value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#dirname)
    @inlinable static func dirName(_ name: any StringProtocol) -> Self {
        Self("dirname", value: Text(verbatim: name))
    }

    /// A Boolean attribute which, if present, indicates that the user should not be able to interact with the input. Disabled inputs are typically rendered with a dimmer color or using some other form of indication that the field is not available for use.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#disabled)
    @inlinable static var disabled: Self {
        Self("disabled")
    }

    /// A string specifying the `<form>` element with which the input is associated (that is, its form owner). This string's value, if present, must match the id of a `<form>` element in the same document. If this attribute isn't specified, the `<input>` element is associated with the nearest containing form, if any.
    ///
    /// - Parameters:
    ///   - id: The id matching the form this is part of.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// The URL that processes the form submission.
    ///
    /// - Parameters:
    ///   - url: The URL string for the form action.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#formaction)
    @inlinable static func formAction(_ url: any StringProtocol) -> Self {
        Self("formaction", value: Text(verbatim: url))
    }

    /// If the value of the method attribute is `.post`, `encType` is the MIME type of the form submission.
    ///
    /// - Parameters:
    ///   - type: The mime type for the form body.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#formenctype)
    @inlinable static func formEncType(_ type: FormEncType) -> Self {
        Self("formenctype", value: Text(verbatim: type.rawValue))
    }

    /// Specifies the HTTP method used to submit the form.
    ///
    /// - Parameters:
    ///   - method: The HTTP method for the form action.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#formmethod)
    @inlinable static func formMethod(_ method: FormMethod) -> Self {
        Self("formmethod", value: Text(verbatim: method.rawValue))
    }

    /// This Boolean attribute indicates that the form shouldn't be validated when submitted.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#formnovalidate)
    @inlinable static var formNoValidate: Self {
        Self("formnovalidate")
    }

    /// Where to display the response from submitting the form, as a keyword for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A keyword target context to display the response.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#formtarget)
    @inlinable static func formTarget(_ target: Target) -> Self {
        .formTarget(target.rawValue)
    }

    /// Where to display the response from submitting the form, as the name for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A tab, window, or `iframe` name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#formtarget)
    @inlinable static func formTarget(_ target: any StringProtocol) -> Self {
        Self("formtarget", value: Text(verbatim: target))
    }

    /// Valid for the image input button only, the height is the height of the image file to display to represent the graphical submit button.
    ///
    /// - Parameters:
    ///   - height: The image height in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#height)
    @inlinable static func height(_ height: UInt) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// The value given to the list attribute should be the id of a `<datalist>` element located in the same document. The `<datalist>` provides a list of predefined values to suggest to the user for this input. Any values in the list that are not compatible with the type are not included in the suggested options. The values provided are suggestions, not requirements: users can select from this predefined list or provide a different value.
    ///
    /// - Parameters:
    ///   - id: The id of the datalist element with suggestions.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#list)
    @inlinable static func list(_ id: any StringProtocol) -> Self {
        Self("list", value: Text(verbatim: id))
    }

    /// Defines the greatest value in the range of permitted values.
    ///
    /// - Parameters:
    ///   - value: The maximum value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#max)
    @inlinable static func max(_ value: any LosslessStringConvertible) -> Self {
        Self("max", value: Text(verbatim: String(value)))
    }

    /// Defines the maximum string length (measured in UTF-16 code units) that the user can enter into the field.
    ///
    /// - Parameters:
    ///   - count: The number of UTF-16 code units allowed.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#maxlength)
    @inlinable static func maxLength(_ count: UInt) -> Self {
        Self("maxlength", value: Text(verbatim: String(count)))
    }

    /// Defines the most negative value in the range of permitted values.
    ///
    /// - Parameters:
    ///   - value: The minimum value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#min)
    @inlinable static func min(_ value: any LosslessStringConvertible) -> Self {
        Self("min", value: Text(verbatim: String(value)))
    }

    /// Defines the minimum string length (measured in UTF-16 code units) that the user can enter into the entry field.
    ///
    /// - Parameters:
    ///   - count: The number of UTF-16 code units allowed.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#minlength)
    @inlinable static func minLength(_ count: UInt) -> Self {
        Self("minlength", value: Text(verbatim: String(count)))
    }

    /// The Boolean multiple attribute, if set, means the user can enter comma separated email addresses in the email widget or can choose more than one file with the file input.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#multiple)
    @inlinable static var multiple: Self {
        Self("multiple")
    }

    /// A string specifying a name for the input control. This name is submitted along with the control's value when the form data is submitted.
    ///
    /// - Parameters:
    ///   - name: The name to use for the accompanying value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// The pattern attribute is used to compile a regular expression that the input's value must match in order for the value to pass constraint validation.
    ///
    /// - Parameters:
    ///   - expression: The regular expression the value must match.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#pattern)
    @inlinable static func pattern(_ expression: any StringProtocol) -> Self {
        Self("pattern", value: Text(verbatim: expression))
    }

    /// The placeholder attribute provides a brief hint to the user as to what kind of information is expected in the field.
    ///
    /// - Parameters:
    ///   - value: The placeholder text.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#placeholder)
    @inlinable static func placeholder(_ value: Text) -> Self {
        Self("placeholder", value: value)
    }

    /// Turns an input button element into a popover control button.
    ///
    /// - Parameters:
    ///   - id: The ID of the popover element to control.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#popovertarget)
    @inlinable static func popoverTarget(_ id: any StringProtocol) -> Self {
        Self("popovertarget", value: Text(verbatim: id))
    }

    /// Specifies the the action to be performed on a popover element being controlled by a control input button.
    ///
    /// - Parameters:
    ///   - action: The action to perform.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#popovertargetaction)
    @inlinable static func popoverTargetAction(_ action: PopoverTargetAction) -> Self {
        Self("popovertargetaction", value: Text(verbatim: action.rawValue))
    }

    /// A Boolean attribute which, if present, indicates that the user should not be able to edit the value of the input.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#readonly)
    @inlinable static var readOnly: Self {
        Self("readonly")
    }

    /// `required` is a Boolean attribute which, if present, indicates that the user must specify a value for the input before the owning form can be submitted.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#required)
    @inlinable static var required: Self {
        Self("required")
    }

    /// The size attribute specifies how much of the input is shown. Basically creates same result as setting CSS width property with a few specialties. The actual unit of the value depends on the input type. For password and text, it is a number of characters (or em units) with a default value of 20, and for others, it is pixels (or px units). CSS width takes precedence over the size attribute.
    ///
    /// - Parameters:
    ///   - size: The number of characters to display.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#size)
    @inlinable static func size(_ size: UInt) -> Self {
        Self("size", value: Text(verbatim: String(size)))
    }

    /// The src is string specifying the URL of the image file to display to represent the graphical submit button.
    ///
    /// - Parameters:
    ///   - url: The url of the image to display.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#src)
    @inlinable static func src(_ url: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: url))
    }

    /// The step attribute is a number that specifies the granularity that the value must adhere to.
    ///
    /// - Parameters:
    ///   - step: The granularity of values.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#step)
    @inlinable static func step(_ step: any LosslessStringConvertible) -> Self {
        Self("step", value: Text(verbatim: String(step)))
    }

    /// A string specifying the type of control to render.
    ///
    /// - Parameters:
    ///   - type: The input type.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#type)
    @inlinable static func type(_ type: InputType) -> Self {
        Self("type", value: Text(verbatim: type.rawValue))
    }

    /// The input control's value.
    ///
    /// - Parameters:
    ///   - value: The initial value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#value)
    @inlinable static func value(_ value: any LosslessStringConvertible) -> Self {
        Self("value", value: Text(verbatim: String(value)))
    }

    /// The width is the width of the image file to display to represent the graphical submit button.
    ///
    /// - Parameters:
    ///   - width: The image width in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#width)
    @inlinable static func width(_ width: UInt) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}

/// Whether autocomplete should be enabled or disabled.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete#values)
public enum AutoCompleteEnabled: String {
    /// The browser is not permitted to automatically enter or select a value for this field. It is possible that the document or application provides its own autocomplete feature, or that security concerns require that the field's value not be automatically entered.
    case off
    /// The browser is allowed to automatically complete the input. No guidance is provided as to the type of data expected in the field, so the browser may use its own judgement.
    case on
}

/// Which device can be used to capture the new file.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/capture)
public enum CaptureDevice: String {
    /// The outward-facing camera and/or microphone should be used.
    case environment
    /// The user-facing camera and/or microphone should be used.
    case user
}

/// The type of control to display to enter into an input.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#input_types)
public enum InputType: String {
    /// A push button with no default behavior displaying the value of the value attribute, empty by default.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/button)
    case button

    /// A check box allowing single values to be selected/deselected.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox)
    case checkbox

    /// A control for specifying a color; opening a color picker when active in supporting browsers.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/color)
    case color

    /// A control for entering a date (year, month, and day, with no time). Opens a date picker or numeric wheels for year, month, day when active in supporting browsers.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/date)
    case date

    /// A control for entering a date and time, with no time zone. Opens a date picker or numeric wheels for date- and time-components when active in supporting browsers.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/datetime-local)
    case dateTimeLocal = "datetime-local"

    /// A field for editing an email address. Looks like a text input, but has validation parameters and relevant keyboard in supporting browsers and devices with dynamic keyboards.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/email)
    case email

    /// A control that lets the user select a file. Use the accept attribute to define the types of files that the control can select.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/file)
    case file

    /// A control that is not displayed but whose value is submitted to the server.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/hidden)
    case hidden

    /// A graphical submit button. Displays an image defined by the src attribute. The alt attribute displays if the image src is missing.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image)
    case image

    /// A control for entering a month and year, with no time zone.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/month)
    case month

    /// A control for entering a number. Displays a spinner and adds default validation. Displays a numeric keypad in some devices with dynamic keypads.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/number)
    case number

    /// A single-line text field whose value is obscured. Will alert user if site is not secure.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/password)
    case password

    /// A radio button, allowing a single value to be selected out of multiple choices with the same name value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio)
    case radio

    /// A control for entering a number whose exact value is not important. Displays as a range widget defaulting to the middle value. Used in conjunction min and max to define the range of acceptable values.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/range)
    case range

    /// A button that resets the contents of the form to default values. Not recommended.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/reset)
    case reset

    /// A single-line text field for entering search strings. Line-breaks are automatically removed from the input value. May include a delete icon in supporting browsers that can be used to clear the field. Displays a search icon instead of enter key on some devices with dynamic keypads.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/search)
    case search

    /// A button that submits the form.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/submit)
    case submit

    /// A control for entering a telephone number. Displays a telephone keypad in some devices with dynamic keypads.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/tel)
    case tel

    /// The default value. A single-line text field. Line-breaks are automatically removed from the input value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/text)
    case text

    /// A control for entering a time value with no time zone.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/time)
    case time

    /// A field for entering a URL. Looks like a text input, but has validation parameters and relevant keyboard in supporting browsers and devices with dynamic keyboards.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/url)
    case url

    /// A control for entering a date consisting of a week-year number and a week number with no time zone.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/week)
    case week
}
