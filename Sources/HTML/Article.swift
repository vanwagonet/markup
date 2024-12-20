import Markup

/// `<article>`: The Article Contents element
///
/// The `<article>` HTML element represents a self-contained composition in a document, page, application, or site.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/article)
public typealias Article<Content: HTMLContent> = Element<Tags.article, Content>
extension Tags { public enum article: HTMLTagName { public static let name = "article" } }
