import Markup

/// `<blockquote>`: The Block Quotation element
///
/// The `<blockquote>` HTML element indicates that the enclosed text is an extended quotation.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote)
public typealias BlockQuote<Content: HTMLContent> = Element<Tags.blockquote, Content>
extension Tags { public enum blockquote: HTMLTagName { public static let name = "blockquote" } }

public extension Attribute<Tags.blockquote> {
    /// A URL that designates a source document or message for the information quoted.
    ///
    /// - Parameters:
    ///   - url: The url string for the source.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote#cite)
    @inlinable static func cite(_ url: any StringProtocol) -> Self {
        Self("cite", value: Text(verbatim: url))
    }
}
