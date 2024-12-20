import Markup

/// `<meta>`: The metadata element
///
/// The `<meta>` HTML element represents metadata that cannot be represented by other HTML meta-related elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
public typealias Meta = VoidElement<Tags.meta>
extension Tags { public enum meta: MetadataTagName { public static let name = "meta" } }

public extension Attribute<Tags.meta> {
    /// This attribute declares the document's character encoding.
    ///
    /// - Parameters:
    ///   - charset: The encoding for this html document. (`.utf8`)
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#charset)
    @inlinable static func charset(_ charset: MetaCharset) -> Self {
        Self("charset", value: Text(verbatim: charset.rawValue))
    }

    /// This attribute contains the value for the `.httpEquiv` or `.name` attribute, depending on which is used.
    ///
    /// - Parameters:
    ///   - content: The string content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#content)
    @inlinable static func content(_ content: any StringProtocol) -> Self {
        Self("content", value: Text(verbatim: content))
    }

    /// Defines a pragma directive.
    ///
    /// The attribute is named http-equiv(alent) because all the allowed values are names of particular HTTP headers.
    ///
    /// - Parameters:
    ///   - header: The string HTTP header this tag emulates.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#http-equiv)
    @inlinable static func httpEquiv(_ header: any StringProtocol) -> Self {
        Self("http-equiv", value: Text(verbatim: header))
    }

    /// The `.name` and `.content` attributes can be used together to provide document metadata.
    ///
    /// - Parameters:
    ///   - name: A string name for the document metadata.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }
}

/// This attribute declares the document's character encoding.
///
/// UTF-8 is the only valid encoding for HTML5 documents.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#charset)
public enum MetaCharset: String {
    /// UTF-8, the only valid encoding for HTML5 documents.
    case utf8 = "utf-8"
}
