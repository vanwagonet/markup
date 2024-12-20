import Markup

/// `<ruby>`: The Ruby Annotation element
///
/// The `<ruby>` HTML element represents small annotations that are rendered above, below, or next to base text,
/// usually used for showing the pronunciation of East Asian characters.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ruby)
public typealias Ruby<Content: HTMLContent> = Element<Tags.ruby, Content>
extension Tags { public enum ruby: HTMLTagName { public static let name = "ruby" } }
