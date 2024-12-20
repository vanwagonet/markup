import Markup

/// `<menu>`: The Menu element
///
/// The `<menu>` HTML element is described in the HTML specification as a semantic alternative to `<ul>`,
/// but treated by browsers (and exposed through the accessibility tree) as no different than `<ul>`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/menu)
public typealias Menu<Content: HTMLContent> = Element<Tags.menu, Content>
extension Tags { public enum menu: HTMLTagName { public static let name = "menu" } }
