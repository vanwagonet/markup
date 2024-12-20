import Markup

/// `<details>`: The Details disclosure element
///
/// The `<details>` HTML element creates a disclosure widget in which information is visible only when the widget is toggled into an "open" state.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details)
public typealias Details<Content: HTMLContent> = Element<Tags.details, Content>
extension Tags { public enum details: HTMLTagName { public static let name = "details" } }

public extension Attribute<Tags.details> {
    /// This Boolean attribute indicates whether the details — that is, the contents of the `<details>` element — are currently visible.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details#open)
    @inlinable static var open: Self {
        Self("open", value: nil)
    }
}
