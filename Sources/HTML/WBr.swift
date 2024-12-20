import Markup

/// `<wbr>`: The Line Break Opportunity element
///
/// The `<wbr>` HTML element represents a word break opportunity—a position within text where the browser may optionally break a line,
/// though its line-breaking rules would not otherwise create a break at that location.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/wbr)
public typealias WBr = VoidElement<Tags.wbr>
extension Tags { public enum wbr: HTMLTagName { public static let name = "wbr" } }
