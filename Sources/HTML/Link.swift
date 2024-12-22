import Markup

/// `<link>`: The External Resource Link element
///
/// The `<link>` HTML element specifies relationships between the current document and an external resource.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link)
public typealias Link = VoidElement<Tags.link>
extension Tags { public enum link: MetadataTagName { public static let name = "link" } }

public extension Link {
    /// Creates an link with the href URL and additional attributes.
    ///
    /// - Parameters:
    ///   - href: The URL string of the resource.
    ///   - attributes: Additional attributes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#href)
    init(href: any StringProtocol, _ attributes: Attribute...) {
        self.init([ Attribute("href", value: Text(verbatim: href)) ] + attributes)
    }

    /// Creates an link with the href URL and additional attributes.
    ///
    /// - Parameters:
    ///   - href: The URL string of the resource.
    ///   - attributes: Additional attributes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#href)
    init(href: any StringProtocol, _ attributes: [Attribute]) {
        self.init([ Attribute("href", value: Text(verbatim: href)) ] + attributes)
    }
}

public extension Attribute<Tags.link> {
    /// It specifies the type of content being loaded by the `<link>`, which is necessary for request matching,
    /// application of correct content security policy, and setting of correct `Accept` request header.
    ///
    /// - Parameters:
    ///   - value: The type of resource to preload.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#as)
    @inlinable static func `as`(_ value: LinkAs) -> Self {
        Self("as", value: Text(verbatim: value.rawValue))
    }

    /// Indicates whether CORS must be used when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The CORS policy of the resource.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#crossorigin)
    @inlinable static func crossOrigin(_ policy: CORSPolicy) -> Self {
        Self("crossorigin", value: Text(verbatim: policy.rawValue))
    }

    /// Hints at the human language of the linked URL.
    ///
    /// - Parameters:
    ///   - lang: The language tag for the target URL.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#hreflang)
    @inlinable static func hrefLang(_ lang: any StringProtocol) -> Self {
        Self("hreflang", value: Text(verbatim: lang))
    }

    /// For `.rel(.preload)` and `.as(.image)` only. One or more possible source sizes.
    ///
    /// - Parameters:
    ///   - sizes: The list of source sizes, each a string of the format (media query) size. ie: `"(max-width: 600px) 480px"`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#imagesizes)
    @inlinable static func imageSizes<S: StringProtocol>(_ sizes: S...) -> Self {
        .imageSizes(sizes)
    }

    /// For `.rel(.preload)` and `.as(.image)` only. One or more possible source sizes.
    ///
    /// - Parameters:
    ///   - sizes: The list of source sizes, each a string of the format (media query) size. ie: `"(max-width: 600px) 480px"`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#imagesizes)
    @inlinable static func imageSizes<S>(_ sizes: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("imagesizes", value: Text(verbatim: sizes.joined(separator: ", ")))
    }

    /// For `.rel(.preload)` and `.as(.image)` only. One or more possible image sources.
    ///
    /// - Parameters:
    ///   - set: The set of possible image sources.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#imagesrcset)
    @inlinable static func imageSrcSet(_ set: SourceSet) -> Self {
        Self("imagesrcset", value: Text(verbatim: set.value))
    }

    /// Contains a base64-encoded cryptographic hash of the resource you're telling the browser to fetch.
    ///
    /// - Parameters:
    ///   - hash: The base64-encoded cryptographic hash.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#integrity)
    @inlinable static func integrity(_ hash: any StringProtocol) -> Self {
        Self("integrity", value: Text(verbatim: hash))
    }

    /// Specifies the media that the linked resource applies to.
    ///
    /// - Parameters:
    ///   - query: The media query.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#media)
    @inlinable static func media(_ query: any StringProtocol) -> Self {
        Self("media", value: Text(verbatim: query))
    }

    /// Indicates which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The referrer policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#referrerpolicy)
    @inlinable static func referrerPolicy(_ policy: ReferrerPolicy) -> Self {
        Self("referrerpolicy", value: Text(verbatim: policy.rawValue))
    }

    /// This attribute names a relationship of the linked document to the current document.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
    @inlinable static func rel(_ types: LinkRelationshipType...) -> Self {
        rel(types)
    }

    /// This attribute names a relationship of the linked document to the current document.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
    @inlinable static func rel<S>(_ types: S) -> Self where S: Sequence, S.Element == LinkRelationshipType {
        Self("rel", value: Text(verbatim: types.map(\.rawValue).joined(separator: " ")))
    }

    /// This attribute is used to define the type of the content linked to.
    ///
    /// - Parameters:
    ///   - mime: The string mime type for the resource.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#type)
    @inlinable static func type(_ mime: any StringProtocol) -> Self {
        Self("type", value: Text(verbatim: mime))
    }
}

/// Types of resource being preloaded when `.rel(.preload)` has been set on a `<link>` element.
public enum LinkAs: String {
    /// `<audio>` elements
    case audio
    /// `<iframe>` elements
    case document
    /// `<embed>` elements
    case embed
    /// fetch, XHR
    case fetch
    /// CSS `@font-face`
    case font
    /// `<img>` and `<picture>` elements with `srcset` or `imageset` attributes,
    /// SVG `<image>` elements, CSS `*-image` rules
    case image
    /// `<object>` elements
    case object
    /// `<script>` elements, Worker `importScripts`
    case script
    /// `<link rel=stylesheet>` elements, CSS `@import`
    case style
    /// `<track>` elements
    case track
    /// `<video>` elements
    case video
    /// Worker, SharedWorker
    case worker
}

/// The `rel` attribute defines the relationship between a linked resource and the current document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
public enum LinkRelationshipType: String {
    /// Alternate representations of the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#alternate)
    case alternate

    /// Author of the current document or article.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#author)
    case author

    /// Preferred URL for the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#canonical)
    case canonical

    /// Tells the browser to preemptively perform DNS resolution for the target resource's origin.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#dns-prefetch)
    case dnsPrefetch = "dns-prefetch"

    /// Link to context-sensitive help.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#help)
    case help

    /// An icon representing the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#icon)
    case icon

    /// Indicates that the main content of the current document is covered by the copyright license.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#license)
    case license

    /// Web app manifest.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#manifest)
    case manifest

    /// Indicates that the current document represents the person who owns the linked content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#me)
    case me

    /// Tells to browser to preemptively fetch the script and store it in the document's module map for later evaluation.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#modulepreload)
    case modulepreload

    /// Indicates that the current document is a part of a series and that the next document in the series is the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#next)
    case next

    /// Gives the address of the pingback server that handles pingbacks to the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#pingback)
    case pingback

    /// Specifies that the user agent should preemptively connect to the target resource's origin.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#preconnect)
    case preconnect

    /// Specifies that the user agent should preemptively fetch and cache the target resource as it is likely to be required for a followup navigation.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#prefetch)
    case prefetch

    /// Specifies that the user agent must preemptively fetch and cache the target resource.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#preload)
    case preload

    /// Specifies that the user agent should preemptively fetch the target resource and process it in a way that helps deliver a faster response in the future.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#prerender)
    case prerender

    /// Indicates that the current document is a part of a series and that the previous document in the series is the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#prev)
    case prev

    /// Gives a link to a resource that can be used to search through the current document and its related pages.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#search)
    case search

    /// Imports a style sheet.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#stylesheet)
    case stylesheet
}
