import Markup

/// `<rp>`: The Ruby Fallback Parenthesis element
///
/// The `<rp>` HTML element is used to provide fall-back parentheses for browsers that do not support display of ruby annotations
/// using the `<ruby>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/rp)
public typealias RP<Content: HTMLContent> = Element<Tags.rp, Content>
extension Tags { public enum rp: HTMLTagName { public static let name = "rp" } }
