import Markup

/// `<a>`
///
/// The `<a>` SVG element creates a hyperlink to other web pages, files, locations in the same page, email addresses, or any other URL. It is very similar to HTML's `<a>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a)
public typealias A<Content: SVGContent> = Element<Tags.a, Content>
extension Tags { public enum a: SVGTagName { public static let name = "a" } }

public extension Attribute<Tags.a> {
    /// Instructs browsers to download a URL instead of navigating to it, so the user will be prompted to save it as a local file.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#download)
    @inlinable static var download: Self {
        download(nil)
    }

    /// Instructs browsers to download a URL instead of navigating to it, so the user will be prompted to save it as a local file.
    ///
    /// - Parameters:
    ///   - filename: An optional preferred filename. If `nil`, the browser will suggest one from other hints.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#download)
    @inlinable static func download(_ filename: Text?) -> Self {
        Self("download", value: filename)
    }

    /// The URL that the hyperlink points to.
    ///
    /// - Parameters:
    ///   - url: The URL string that the hyperlink points to.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#href)
    @inlinable static func href(_ url: any StringProtocol) -> Self {
        Self("href", value: Text(verbatim: url))
    }

    /// Hints at the human language of the linked URL.
    ///
    /// - Parameters:
    ///   - lang: The language tag for the target URL.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#hreflang)
    @inlinable static func hrefLang(_ lang: any StringProtocol) -> Self {
        Self("hreflang", value: Text(verbatim: lang))
    }

    ///. When the link is followed, the browser will send POST requests with the body PING to the URLs.
    ///
    /// - Parameters:
    ///   - urls: The list of URLs to ping.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#ping)
    @inlinable static func ping<S: StringProtocol>(_ urls: S...) -> Self {
        ping(urls)
    }

    ///. When the link is followed, the browser will send POST requests with the body PING to the URLs.
    ///
    /// - Parameters:
    ///   - urls: The list of URLs to ping.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#ping)
    @inlinable static func ping<S>(_ urls: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("ping", value: Text(verbatim: urls.joined(separator: " ")))
    }

    /// Indicates which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The referrer policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#referrerpolicy)
    @inlinable static func referrerPolicy(_ policy: ReferrerPolicy) -> Self {
        Self("referrerpolicy", value: Text(verbatim: policy.rawValue))
    }

    /// The relationship of the linked URL as link types.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attributes/rel)
    @inlinable static func rel(_ types: ARelationshipType...) -> Self {
        rel(types)
    }

    /// The relationship of the linked URL as link types.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attributes/rel)
    @inlinable static func rel<S>(_ types: S) -> Self where S: Sequence, S.Element == ARelationshipType {
        Self("rel", value: Text(verbatim: types.map(\.rawValue).joined(separator: " ")))
    }

    /// Where to display the linked URL, as a keyword for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A keyword target context to display the link.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#target)
    @inlinable static func target(_ target: Target) -> Self {
        .target(target.rawValue)
    }

    /// Where to display the linked URL, as the name for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A tab, window, or `iframe` name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#target)
    @inlinable static func target(_ target: any StringProtocol) -> Self {
        Self("target", value: Text(verbatim: target))
    }

    /// Hints at the linked URL's format with a MIME type.
    ///
    /// - Parameters:
    ///   - mime: A mime-type hint for the linked content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a#type)
    @inlinable static func type(_ mime: any StringProtocol) -> Self {
        Self("type", value: Text(verbatim: mime))
    }
}

/// The `rel` attribute defines the relationship between a linked resource and the current document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
public enum ARelationshipType: String {
    /// Alternate representations of the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#alternate)
    case alternate

    /// Author of the current document or article.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#author)
    case author

    /// Permalink for the nearest ancestor section.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#bookmark)
    case bookmark

    /// The referenced document is not part of the same site as the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#external)
    case external

    /// Link to context-sensitive help.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#help)
    case help

    /// Indicates that the main content of the current document is covered by the copyright license.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#license)
    case license

    /// Indicates that the current document represents the person who owns the linked content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#me)
    case me

    /// Indicates that the current document is a part of a series and that the next document in the series is the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#next)
    case next

    /// Indicates that the current document's original author or publisher does not endorse the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#nofollow)
    case noFollow = "nofollow"

    /// Creates a top-level browsing context that is not an auxiliary browsing context if the hyperlink would create either of those,
    /// to begin with (i.e., has an appropriate `target` attribute value).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#noopener)
    case noOpener = "noopener"

    /// No Referer header will be included. Additionally, has the same effect as `.noOpener`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#noreferrer)
    case noReferrer = "noreferrer"

    /// Creates an auxiliary browsing context if the hyperlink would otherwise create a top-level browsing context that is not an auxiliary browsing
    /// context (i.e., has `"_blank"` as `target` attribute value).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#opener)
    case opener

    /// Indicates that the current document is a part of a series and that the previous document in the series is the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#prev)
    case prev

    /// Gives a link to a resource that can be used to search through the current document and its related pages.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#search)
    case search

    /// Gives a tag (identified by the given address) that applies to the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#tag)
    case tag
}

/// Possible policies for sending the referrer header.
public enum ReferrerPolicy: String {
    /// The Referer header will not be sent.
    case noReferrer = "no-referrer"
    /// The Referer header will not be sent to origins without TLS (HTTPS).
    case noReferrerWhenDowngrade = "no-referrer-when-downgrade"
    /// The sent referrer will be limited to the origin of the referring page: its scheme, host, and port.
    case origin
    /// The referrer sent to other origins will be limited to the scheme, the host, and the port. Navigations on the same origin will still include the path.
    case originWhenCrossOrigin = "origin-when-cross-origin"
    /// A referrer will be sent for same origin, but cross-origin requests will contain no referrer information.
    case sameOrigin = "same-origin"
    /// Only send the origin of the document as the referrer when the protocol security level stays the same (HTTPS→HTTPS), but don't send it to a less secure destination (HTTPS→HTTP).
    case strictOrigin = "strict-origin"
    /// Default. Send a full URL when performing a same-origin request, only send the origin when the protocol security level stays the same (HTTPS→HTTPS), and send no header to a less secure destination (HTTPS→HTTP).
    case strictOriginWhenCrossOrigin = "strict-origin-when-cross-origin"
    /// The referrer will include the origin and the path (but not the fragment, password, or username).
    /// This value is unsafe, because it leaks origins and paths from TLS-protected resources to insecure origins.
    case unsafeURL = "unsafe-url"
}

/// The following keywords have special meanings for where to load the URL.
public enum Target: String {
    /// The current browsing context. (Default)
    case _self
    /// Usually a new tab, but users can configure browsers to open a new window instead.
    case _blank
    /// The parent browsing context of the current one. If no parent, behaves as `._self`.
    case _parent
    /// The topmost browsing context (the "highest" context that's an ancestor of the current one). If no ancestors, behaves as `._self`.
    case _top
}
