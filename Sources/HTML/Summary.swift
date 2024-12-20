import Markup

/// `<summary>`: The Disclosure Summary element
///
/// The `<summary>` HTML element specifies a summary, caption, or legend for a `<details>` element's disclosure box.
/// Clicking the `<summary>` element toggles the state of the parent `<details>` element open and closed.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/summary)
public typealias Summary<Content: HTMLContent> = Element<Tags.summary, Content>
extension Tags { public enum summary: HTMLTagName { public static let name = "summary" } }
