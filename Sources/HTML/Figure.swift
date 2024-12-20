import Markup

/// `<figure>`: The Figure with Optional Caption element
///
/// The `<figure>` HTML element represents self-contained content, potentially with an optional caption,
/// which is specified using the `<figcaption>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figure)
public typealias Figure<Content: HTMLContent> = Element<Tags.figure, Content>
extension Tags { public enum figure: HTMLTagName { public static let name = "figure" } }
