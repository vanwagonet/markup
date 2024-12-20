import Markup

/// `<br>`: The Line Break element
///
/// The `<br>` HTML element produces a line break in text (carriage-return).
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/br)
public typealias Br = VoidElement<Tags.br>
extension Tags { public enum br: HTMLTagName { public static let name = "br" } }
