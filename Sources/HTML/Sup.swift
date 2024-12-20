import Markup

/// `<sup>`: The Superscript element
///
/// The `<sup>` HTML element specifies inline text which is to be displayed as superscript for solely typographical reasons.
/// Superscripts are usually rendered with a raised baseline using smaller text.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sup)
public typealias Sup<Content: HTMLContent> = Element<Tags.sup, Content>
extension Tags { public enum sup: HTMLTagName { public static let name = "sup" } }
