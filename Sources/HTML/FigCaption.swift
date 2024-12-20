import Markup

/// `<figcaption>`: The Figure Caption element
///
/// The `<figcaption>` HTML element represents a caption or legend describing the rest of the contents of its parent `<figure>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figcaption)
public typealias FigCaption<Content: HTMLContent> = Element<Tags.figcaption, Content>
extension Tags { public enum figcaption: HTMLTagName { public static let name = "figcaption" } }
