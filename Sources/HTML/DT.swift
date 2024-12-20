import Markup

/// `<dt>`: The Description Term element
///
/// The `<dt>` HTML element specifies a term in a description or definition list, and as such must be used inside a `<dl>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dt)
public typealias DT<Content: HTMLContent> = Element<Tags.dt, Content>
extension Tags { public enum dt: HTMLTagName { public static let name = "dt" } }
