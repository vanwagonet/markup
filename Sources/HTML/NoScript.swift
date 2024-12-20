import Markup

/// `<noscript>`: The Menu element
///
/// The `<noscript>` HTML element is described in the HTML specification as a semantic alternative to `<ul>`,
/// but treated by browsers (and exposed through the accessibility tree) as no different than `<ul>`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript)
public typealias NoScript<Content: HTMLContent> = Element<Tags.noscript, Content>
extension Tags { public enum noscript: MetadataTagName { public static let name = "noscript" } }
