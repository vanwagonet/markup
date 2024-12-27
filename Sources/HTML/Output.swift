import Markup

/// `<output>`: The Output element
///
/// The `<output>` HTML element is a container element into which a site or app can inject the results of a calculation or the outcome of a user action.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output)
public typealias Output<Content: HTMLContent> = Element<Tags.output, Content>
extension Tags { public enum output: HTMLTagName { public static let name = "output" } }

public extension Attribute<Tags.output> {
    /// A space-separated list of other elements' ids, indicating that those elements contributed input values to (or otherwise affected) the calculation..
    ///
    /// - Parameters:
    ///   - ids: The ids.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output#for)
    @inlinable static func `for`<S: StringProtocol>(_ ids: S...) -> Self {
        .for(ids)
    }
    /// A space-separated list of other elements' ids, indicating that those elements contributed input values to (or otherwise affected) the calculation..
    ///
    /// - Parameters:
    ///   - ids: The ids.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output#for)
    @inlinable static func `for`<S>(_ ids: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("for", value: Text(verbatim: ids.joined(separator: " ")))
    }

    /// The `<form>` element to associate the output with (its form owner). The value of this attribute must be the id of a `<form>` in the same document. (If this attribute is not set, the `<output>` is associated with its ancestor `<form>` element, if any.)
    ///
    /// This attribute lets you associate `<output>` elements to `<form>`s anywhere in the document, not just inside a `<form>`. It can also override an ancestor `<form>` element. The `<output>` element's name and content are not submitted when the form is submitted..
    ///
    /// - Parameters:
    ///   - id: The id matching the form this is part of.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// The element's name. Used in the form.elements API.
    ///
    /// - Parameters:
    ///   - name: The element name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }
}
