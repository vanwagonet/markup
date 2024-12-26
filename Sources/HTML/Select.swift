import Markup

/// `<select>`: The HTML Select element
///
/// The `<select>` HTML element represents a control that provides a menu of options.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select)
public typealias Select<Content: SelectContent> = Element<Tags.select, Content>
extension Tags { public enum select: HTMLTagName { public static let name = "select" } }

public extension Attribute<Tags.select> {
    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the control should provide.
    ///
    /// - Parameters:
    ///   - enabled: Whether to enable or disable auto completion.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#autocomplete)
    @inlinable static func autoComplete(_ enabled: AutoCompleteEnabled) -> Self {
        Self("autocomplete", value: Text(verbatim: enabled.rawValue))
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the control should provide.
    ///
    /// - Parameters:
    ///   - tokens: What kind of auto completion should the browser offer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#autocomplete)
    @inlinable static func autoComplete<S: StringProtocol>(_ tokens: S...) -> Self {
        .autoComplete(tokens)
    }

    /// The autocomplete attribute takes as its value a space-separated string that describes what, if any, type of autocomplete functionality the control should provide.
    ///
    /// - Parameters:
    ///   - tokens: What kind of auto completion should the browser offer.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#autocomplete)
    @inlinable static func autoComplete<S>(_ tokens: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("autocomplete", value: Text(verbatim: tokens.joined(separator: " ")))
    }

    /// This Boolean attribute indicates that the user cannot interact with the control.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#disabled)
    @inlinable static var disabled: Self {
        Self("disabled")
    }

    /// The `<form>` element to associate the `<select>` with (its form owner). The value of this attribute must be the id of a `<form>` in the same document. (If this attribute is not set, the `<select>` is associated with its ancestor `<form>` element, if any.)
    ///
    /// This attribute lets you associate `<select>` elements to `<form>`s anywhere in the document, not just inside a `<form>`. It can also override an ancestor `<form>` element.
    ///
    /// - Parameters:
    ///   - id: The id matching the form this is part of.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// This Boolean attribute indicates that multiple options can be selected in the list. If it is not specified, then only one option can be selected at a time. When multiple is specified, most browsers will show a scrolling list box instead of a single line dropdown.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#multiple)
    @inlinable static var multiple: Self {
        Self("multiple")
    }

    /// This attribute is used to specify the name of the control.
    ///
    /// - Parameters:
    ///   - name: The name to use for the accompanying value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// A Boolean attribute indicating that an option with a non-empty string value must be selected.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#required)
    @inlinable static var required: Self {
        Self("required")
    }

    /// If the control is presented as a scrolling list box (e.g. when `multiple` is specified), this attribute represents the number of rows in the list that should be visible at one time. Browsers are not required to present a select element as a scrolled list box.
    ///
    /// - Parameters:
    ///   - size: The number of items to display.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#size)
    @inlinable static func size(_ size: UInt) -> Self {
        Self("size", value: Text(verbatim: String(size)))
    }
}

public protocol SelectContent: Markup {}
public protocol SelectTagName: HTMLTagName {}

extension Array: SelectContent where Element: SelectContent {}
extension Comment: SelectContent {}
extension Element: SelectContent where Tag: SelectTagName {}
extension Either: SelectContent where True: SelectContent, False: SelectContent {}
extension Empty: SelectContent {}
extension Optional: SelectContent where Wrapped: SelectContent {}
extension Pair: SelectContent where First: SelectContent, Second: SelectContent {}
extension VoidElement: SelectContent where Tag: SelectTagName {}

extension Tags.hr: SelectTagName {}
extension Tags.option: SelectTagName {}
extension Tags.optgroup: SelectTagName {}
