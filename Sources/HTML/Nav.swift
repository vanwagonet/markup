import Markup

/// `<nav>`: The Navigation Section element
///
/// The `<nav>` HTML element represents a section of a page whose purpose is to provide navigation links.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav)
public typealias Nav<Content: HTMLContent> = Element<Tags.nav, Content>
extension Tags { public enum nav: HTMLTagName { public static let name = "nav" } }
