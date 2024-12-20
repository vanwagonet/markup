import Markup

/// `<mark>`: The Mark Text element
///
/// The `<mark>` HTML element represents text which is marked or highlighted for reference.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark)
public typealias Mark<Content: HTMLContent> = Element<Tags.mark, Content>
extension Tags { public enum mark: HTMLTagName { public static let name = "mark" } }
