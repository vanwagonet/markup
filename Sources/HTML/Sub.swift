import Markup

/// `<sub>`: The Subscript element
///
/// The `<sub>` HTML element specifies inline text which should be displayed as subscript for solely typographical reasons.
/// Subscripts are typically rendered with a lowered baseline using smaller text.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sub)
public typealias Sub<Content: HTMLContent> = Element<Tags.sub, Content>
extension Tags { public enum sub: HTMLTagName { public static let name = "sub" } }
