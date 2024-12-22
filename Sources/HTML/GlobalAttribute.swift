import Markup

/// Global attributes for HTML elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes)
public protocol HTMLTagName: TagName {}

public extension Attribute where Tag: HTMLTagName {
    /// Provides a hint for generating a keyboard shortcut for the current element.
    ///
    /// - Parameters:
    ///   - keys: The list of keyboard shortcut characters.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/accesskey)
    @inlinable static func accessKey(_ keys: Character...) -> Self {
        accessKey(keys)
    }

    /// Provides a hint for generating a keyboard shortcut for the current element.
    ///
    /// - Parameters:
    ///   - keys: The list of keyboard shortcut characters.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/accesskey)
    @inlinable static func accessKey<S>(_ keys: S) -> Self where S: Sequence, S.Element == Character {
        Self("accesskey", value: Text(verbatim: keys.map { String($0) } .joined(separator: " ")))
    }

    /// Controls whether and how text input is automatically capitalized as it is entered/edited by the user.
    ///
    /// - Parameters:
    ///   - hint: The hint for capitalization.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autocapitalize)
    @inlinable static func autoCapitalize(_ hint: AutoCapitalize) -> Self {
        Self("autocapitalize", value: Text(verbatim: hint.rawValue))
    }

    /// Indicates that an element is to be focused on page load, or as soon as the `<dialog>` it is part of is displayed.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autofocus)
    @inlinable static var autoFocus: Self {
        Self("autofocus", value: nil)
    }

    /// A space-separated list of the classes of the element.
    ///
    /// - Parameters:
    ///   - classes: The list of class names.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/class)
    @inlinable static func `class`<S: StringProtocol>(_ classes: S...) -> Self {
        .class(classes)
    }

    /// A space-separated list of the classes of the element.
    ///
    /// - Parameters:
    ///   - classes: The list of class names.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/class)
    @inlinable static func `class`<S>(_ classes: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("class", value: Text(verbatim: classes.joined(separator: " ")))
    }

    /// An enumerated attribute indicating if the element should be editable by the user.
    ///
    /// - Parameters:
    ///   - value: The value indicating if the element should be editable.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable)
    @inlinable static func contentEditable(_ value: ContentEditable) -> Self {
        Self("contenteditable", value: Text(verbatim: value.rawValue))
    }

    /// Forms a class of attributes, called custom data attributes, that allow proprietary information to be exchanged between the HTML
    /// and its DOM representation that may be used by scripts.
    ///
    /// - Parameters:
    ///   - name: The string name.
    ///   - value: The string value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*)
    @inlinable static func data(_ name: any StringProtocol, value: any StringProtocol) -> Self {
        Self("data-\(name)", value: Text(verbatim: value))
    }

    /// An enumerated attribute indicating the directionality of the element's text.
    ///
    /// - Parameters:
    ///   - dir: The direction of the element's text.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir)
    @inlinable static func dir(_ dir: Dir) -> Self {
        Self("dir", value: Text(verbatim: dir.rawValue))
    }

    /// An enumerated attribute indicating whether the element can be dragged.
    ///
    /// - Parameters:
    ///   - value: Whether or not to enable dragging.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/draggable)
    @inlinable static func draggable(_ value: Bool) -> Self {
        Self("draggable", value: Text(verbatim: String(value)))
    }

    /// The elementtiming attribute is used to indicate that an element is flagged for tracking.
    ///
    /// - Parameters:
    ///   - id: An identifier for this observed element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/elementtiming)
    @inlinable static func elementTiming(_ id: any StringProtocol) -> Self {
        Self("elementtiming", value: Text(verbatim: id))
    }

    /// Hints what action label (or icon) to present for the enter key on virtual keyboards.
    ///
    /// - Parameters:
    ///   - value: The hint for how to style the virtual return key.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/enterkeyhint)
    @inlinable static func enterKeyHint(_ hint: EnterKeyHint) -> Self {
        Self("enterkeyhint", value: Text(verbatim: hint.rawValue))
    }

    /// Used to transitively export shadow parts from a nested shadow tree into a containing light tree.
    ///
    /// - Parameters:
    ///   - parts: The list of part names or mappings.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/exportparts)
    @inlinable static func exportParts<S: StringProtocol>(_ parts: S...) -> Self {
        .exportParts(parts)
    }

    /// Used to transitively export shadow parts from a nested shadow tree into a containing light tree.
    ///
    /// - Parameters:
    ///   - parts: The list of part names or mappings.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/exportparts)
    @inlinable static func exportParts<S>(_ parts: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("exportparts", value: Text(verbatim: parts.joined(separator: ",")))
    }

    /// Indicates that the element is not yet, or is no longer, relevant.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/hidden)
    @inlinable static var hidden: Self {
        Self("hidden", value: nil)
    }

    /// Defines a unique identifier (ID) which must be unique in the whole document.
    ///
    /// - Parameters:
    ///   - id: An identifier for this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id)
    @inlinable static func id(_ id: any StringProtocol) -> Self {
        Self("id", value: Text(verbatim: id))
    }

    /// A boolean value that makes the browser disregard user input events for the element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inert)
    @inlinable static var inert: Self {
        Self("inert", value: nil)
    }

    /// Provides a hint to browsers about the type of virtual keyboard configuration to use when editing this element or its contents.
    ///
    /// - Parameters:
    ///   - mode: The virtual keyboard mode to prefer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inputmode)
    @inlinable static func inputMode(_ mode: InputMode) -> Self {
        Self("inputmode", value: Text(verbatim: mode.rawValue))
    }

    /// Allows you to specify that a standard HTML element should behave like a registered custom built-in element.
    ///
    /// - Parameters:
    ///   - name: A custom element name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/is)
    @inlinable static func `is`(_ name: any StringProtocol) -> Self {
        Self("is", value: Text(verbatim: name))
    }

    /// The lang global attribute helps define the language of an element: the language that non-editable elements are written in,
    /// or the language that the editable elements should be written in by the user.
    ///
    /// - Parameters:
    ///   - language: A single "language tag" in the format defined in
    ///     [RFC 5646: Tags for Identifying Languages (also known as BCP 47)](https://datatracker.ietf.org/doc/html/rfc5646).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang)
    @inlinable static func lang(_ language: any StringProtocol) -> Self {
        Self("lang", value: Text(verbatim: language))
    }

    /// A cryptographic nonce ("number used once") which can be used by Content Security Policy to determine whether or not a given fetch will be allowed to proceed.
    ///
    /// - Parameters:
    ///   - hash: The hash associated with the content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/nonce)
    @inlinable static func nonce(_ hash: any StringProtocol) -> Self {
        Self("nonce", value: Text(verbatim: hash))
    }

    /// The part names of the element. Part names allows CSS to select and style specific elements in a shadow tree via the `::part` pseudo-element.
    ///
    /// - Parameters:
    ///   - parts: The list of part names.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/part)
    @inlinable static func part<S: StringProtocol>(_ parts: S...) -> Self {
        .part(parts)
    }

    /// The part names of the element. Part names allows CSS to select and style specific elements in a shadow tree via the `::part` pseudo-element.
    ///
    /// - Parameters:
    ///   - parts: The list of part names.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/part)
    @inlinable static func part<S>(_ parts: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("part", value: Text(verbatim: parts.joined(separator: " ")))
    }

    /// Used to designate an element as a popover element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
    @inlinable static var popover: Self {
        Self("popover", value: nil)
    }

    /// Assigns a slot in a shadow DOM shadow tree to an element: An element with a slot attribute is assigned to the slot created by the `<slot>` element
    /// whose name attribute's value matches that `slot` attribute's value.
    ///
    /// - Parameters:
    ///   - name: A slot name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/slot)
    @inlinable static func slot(_ name: any StringProtocol) -> Self {
        Self("slot", value: Text(verbatim: name))
    }

    /// An enumerated attribute defines whether the element may be checked for spelling errors.
    ///
    /// - Parameters:
    ///   - value: Whether or not to enable spellcheck.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/spellcheck)
    @inlinable static func spellCheck(_ value: Bool) -> Self {
        Self("spellcheck", value: Text(verbatim: String(value)))
    }

    /// Contains CSS styling declarations to be applied to the element.
    ///
    /// - Parameters:
    ///   - css: A string of css to apply to this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/style)
    @inlinable static func style(_ css: any StringProtocol) -> Self {
        Self("style", value: Text(verbatim: css))
    }

    /// An integer attribute indicating if the element can take input focus (is focusable),
    /// if it should participate to sequential keyboard navigation, and if so, at what position.
    ///
    /// - Parameters:
    ///   - index: The tab index.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/tabindex)
    @inlinable static func tabIndex(_ index: any BinaryInteger) -> Self {
        Self("tabindex", value: Text(verbatim: String(index)))
    }

    /// Contains a text representing advisory information related to the element it belongs to.
    ///
    /// - Parameters:
    ///   - title: A string title for this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/title)
    @inlinable static func title(_ title: Text) -> Self {
        Self("title", value: title)
    }

    /// An enumerated attribute that is used to specify whether an element's attribute values and the values of its Text node children are to be translated
    /// when the page is localized, or whether to leave them unchanged.
    ///
    /// - Parameters:
    ///   - value: Whether or not to translate this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/translate)
    @inlinable static func translate(_ value: Bool) -> Self {
        Self("translate", value: Text(verbatim: value ? "yes" : "no"))
    }
}

/// Controls whether and how text input is automatically capitalized as it is entered/edited by the user.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autocapitalize)
public enum AutoCapitalize: String {
    /// All letters should default to uppercase.
    case characters
    /// No autocapitalization should be applied (all letters should default to lowercase).
    case off, none
    /// The first letter of each sentence should default to a capital letter; all other letters should default to lowercase.
    case on, sentences
    /// The first letter of each word should default to a capital letter; all other letters should default to lowercase.
    case words
}

/// An enumerated attribute indicating if the element should be editable by the user.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable)
public enum ContentEditable: String {
    /// The element is editable.
    case `true`
    /// The element is not editable.
    case `false`
    /// The element's raw text is editable, but rich text formatting is disabled.
    case plainTextOnly = "plaintext-only"
}

/// An enumerated attribute indicating the directionality of the element's text.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir)
public enum Dir: String {
    /// Left to right, for languages that are written from the left to the right (like English).
    case ltr
    /// Right to left, for languages that are written from the right to the left (like Arabic).
    case rtl
    /// Uses a basic algorithm as it parses the characters inside the element until it finds a character with a strong directionality,
    /// then it applies that directionality to the whole element.
    case auto
}

/// Hints what action label (or icon) to present for the enter key on virtual keyboards.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/enterkeyhint)
public enum EnterKeyHint: String {
    /// Typically inserting a new line.
    case enter
    /// Typically meaning there is nothing more to input and the input method editor (IME) will be closed.
    case done
    /// Typically meaning to take the user to the target of the text they typed.
    case go
    /// Typically taking the user to the next field that will accept text.
    case next
    /// Typically taking the user to the previous field that will accept text.
    case previous
    /// Typically taking the user to the results of searching for the text they have typed.
    case search
    /// Typically delivering the text to its target.
    case send
}

/// Provides a hint to browsers about the type of virtual keyboard configuration to use when editing this element or its contents.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inputmode)
public enum InputMode: String {
    /// Fractional numeric input keyboard containing the digits and decimal separator for the user's locale (typically `.` or `,`).
    /// Devices may or may not show a minus key (`-`).
    case decimal
    /// A virtual keyboard optimized for entering email addresses.
    case email
    /// No virtual keyboard. For when the page implements its own keyboard input control.
    case none
    /// Numeric input keyboard, but only requires the digits `0–9`. Devices may or may not show a minus key.
    case numeric
    /// A virtual keyboard optimized for search input.
    case search
    /// A telephone keypad input, including the digits `0–9`, the asterisk (`*`), and the pound (`#`) key.
    case tel
    /// Standard input keyboard for the user's current locale.
    case text
    /// A keypad optimized for entering URLs. This may have the `/` key more prominent, for example. 
    case url
}
