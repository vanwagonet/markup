import Markup

/// `<q>`: The Inline Quotation element
///
/// The `<q>` HTML element indicates that the enclosed text is a short inline quotation.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q)
public typealias Q<Content: HTMLContent> = Element<Tags.q, Content>
extension Tags { public enum q: HTMLTagName { public static let name = "q" } }

public extension Attribute<Tags.q> {
    /// A URL that designates a source document or message for the information quoted.
    ///
    /// - Parameters:
    ///   - url: The url string for the source.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q#cite)
    @inlinable static func cite(_ url: any StringProtocol) -> Self {
        Self("cite", value: Text(verbatim: url))
    }
}
