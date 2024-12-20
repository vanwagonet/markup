import Markup

/// `<head>`: The Document Metadata (Header) element
///
/// The `<head>` HTML element contains machine-readable information (metadata) about the document, like its title, scripts, and style sheets.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head)
public typealias Head<Content: MetadataContent> = Element<Tags.head, Content>
extension Tags { public enum head: HTMLTagName { public static let name = "head" } }
