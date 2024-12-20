import Markup

/// `<fieldset>`: The Field Set element
///
/// The `<fieldset>` HTML element is used to group several controls as well as labels (`<label>`) within a web form.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset)
public typealias FieldSet<Content: HTMLContent> = Element<Tags.fieldset, Content>
extension Tags { public enum fieldset: HTMLTagName { public static let name = "fieldset" } }

public extension Attribute<Tags.fieldset> {
    /// If this Boolean attribute is set, all form controls that are descendants of the `<fieldset>`, are disabled,
    /// meaning they are not editable and won't be submitted along with the `<form>`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset#disabled)
    @inlinable static var disabled: Self {
        Self("disabled", value: nil)
    }

    /// This attribute takes the value of the id attribute of a `<form>` element you want the `<fieldset>` to be part of, even if it is not inside the form.
    /// Please note that usage of this is confusing — if you want the `<input>` elements inside the `<fieldset>` to be associated with the form,
    /// you need to use the form attribute directly on those elements.
    ///
    /// - Parameters:
    ///   - id: The id of a `<form>` in the same document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// The name associated with the group.
    ///
    /// - Parameters:
    ///   - name: The name of the field set.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fieldset#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }
}
