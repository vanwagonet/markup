import Markup

/// `<bdi>`: The Bidirectional Isolate element
///
/// The `<bdi>` HTML element tells the browser's bidirectional algorithm to treat the text it contains in isolation from its surrounding text.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdi)
public typealias BDI<Content: HTMLContent> = Element<Tags.bdi, Content>
extension Tags { public enum bdi: HTMLTagName { public static let name = "bdi" } }
