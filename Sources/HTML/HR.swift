import Markup

/// `<hr>`: The Thematic Break (Horizontal Rule) element
///
/// The `<hr>` HTML element represents a thematic break between paragraph-level elements:
/// for example, a change of scene in a story, or a shift of topic within a section.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/hr)
public typealias HR = VoidElement<Tags.hr>
extension Tags { public enum hr: HTMLTagName { public static let name = "hr" } }
