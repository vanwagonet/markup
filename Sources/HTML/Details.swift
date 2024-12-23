import Markup

/// `<details>`: The Details disclosure element
///
/// The `<details>` HTML element creates a disclosure widget in which information is visible only when the widget is toggled into an "open" state.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details)
public typealias Details<Content: HTMLContent> = Element<Tags.details, Content>
extension Tags { public enum details: HTMLTagName { public static let name = "details" } }

public extension Attribute<Tags.details> {
    /// This attribute enables multiple `<details>` elements to be connected, with only one open at a time. This allows developers to easily create UI features such as accordions without scripting.
    ///
    /// The name attribute specifies a group name — give multiple `<details>` elements the same name value to group them. Only one of the grouped `<details>` elements can be open at a time — opening one will cause another to close. If multiple grouped `<details>` elements are given the open attribute, only the first one in the source order will be rendered open.
    ///
    /// - Parameters:
    ///   - name: The name for the group of details.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// This Boolean attribute indicates whether the details — that is, the contents of the `<details>` element — are currently visible.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details#open)
    @inlinable static var open: Self {
        Self("open", value: nil)
    }
}
