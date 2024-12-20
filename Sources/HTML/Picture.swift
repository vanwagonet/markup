import Markup

/// `<picture>`: The Picture element
///
/// The `<picture>` HTML element contains zero or more `<source>` elements and one `<img>` element
/// to offer alternative versions of an image for different display/device scenarios.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture)
public typealias Picture<Content: HTMLContent> = Element<Tags.picture, Content>
extension Tags { public enum picture: HTMLTagName { public static let name = "picture" } }
