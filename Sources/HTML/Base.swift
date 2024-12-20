import Markup

/// `<base>`: The Document Base URL element
///
/// The `<base>` HTML element specifies the base URL to use for all relative URLs in a document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base)
public typealias Base = VoidElement<Tags.base>
extension Tags { public enum base: MetadataTagName { public static let name = "base" } }

public extension Attribute<Tags.base> {
    /// The base URL to be used throughout the document for relative URLs. Absolute and relative URLs are allowed.
    ///
    /// - Parameters:
    ///   - url: The base URL string.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base#href)
    @inlinable static func href(_ url: any StringProtocol) -> Self {
        Self("href", value: Text(verbatim: url))
    }

    /// Default location to display linked URLs, as a keyword for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A keyword target context to display the link.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base#target)
    @inlinable static func target(_ target: Target) -> Self {
        self.target(target.rawValue)
    }

    /// Default location to display linked URL, as the name for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A tab, window, or `iframe` name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base#target)
    @inlinable static func target(_ target: any StringProtocol) -> Self {
        Self("target", value: Text(verbatim: target))
    }
}
