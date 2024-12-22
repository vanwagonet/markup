import Markup

/// `<img>`: The Image Embed element
///
/// The `<img>` HTML element embeds an image into the document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img)
public typealias Img = VoidElement<Tags.img>
extension Tags { public enum img: HTMLTagName { public static let name = "img" } }

public extension Img {
    /// Creates an image with the src URL and additional attributes.
    ///
    /// - Parameters:
    ///   - src: The url string for the image content.
    ///   - attributes: Additional attributes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#src)
    init(src: any StringProtocol, _ attributes: Attribute...) {
        self.init([ Attribute("src", value: Text(verbatim: src)) ] + attributes)
    }

    /// Creates an image with the src URL and additional attributes.
    ///
    /// - Parameters:
    ///   - src: The url string for the image content.
    ///   - attributes: Additional attributes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#src)
    init(src: any StringProtocol, _ attributes: [Attribute]) {
        self.init([ Attribute("src", value: Text(verbatim: src)) ] + attributes)
    }
}

public extension Attribute<Tags.img> {
    /// Defines an alternative text description of the image.
    ///
    /// - Parameters:
    ///   - description: The textual description of the image.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#alt)
    @inlinable static func alt(_ description: Text) -> Self {
        Self("alt", value: description)
    }

    /// Indicates if the fetching of the image must be done using a CORS request.
    ///
    /// - Parameters:
    ///   - policy: The CORS policy of the image.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#crossorigin)
    @inlinable static func crossOrigin(_ policy: CORSPolicy) -> Self {
        Self("crossorigin", value: Text(verbatim: policy.rawValue))
    }

    /// Provides an image decoding hint to the browser.
    ///
    /// - Parameters:
    ///   - hint: The image decoding hint.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#decoding)
    @inlinable static func decoding(_ hint: ImgDecoding) -> Self {
        Self("decoding", value: Text(verbatim: hint.rawValue))
    }

    /// The intrinsic height of the image in pixels.
    ///
    /// - Parameters:
    ///   - height: The image height in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#height)
    @inlinable static func height(_ height: UInt) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// This Boolean attribute indicates that the image is part of a server-side map.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#ismap)
    @inlinable static var isMap: Self {
        Self("ismap", value: nil)
    }

    /// Indicates how the browser should load the image.
    ///
    /// - Parameters:
    ///   - hint: The image loading hint.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#loading)
    @inlinable static func loading(_ hint: ImgLoading) -> Self {
        Self("loading", value: Text(verbatim: hint.rawValue))
    }

    /// Indicates which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The referrer policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#referrerpolicy)
    @inlinable static func referrerPolicy(_ policy: ReferrerPolicy) -> Self {
        Self("referrerpolicy", value: Text(verbatim: policy.rawValue))
    }

    /// One or more possible source sizes.
    ///
    /// - Parameters:
    ///   - sizes: The list of source sizes, each a string of the format (media query) size. ie: `"(max-width: 600px) 480px"`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#sizes)
    @inlinable static func sizes<S: StringProtocol>(_ sizes: S...) -> Self {
        .sizes(sizes)
    }

    /// One or more possible source sizes.
    ///
    /// - Parameters:
    ///   - sizes: The list of source sizes, each a string of the format (media query) size. ie: `"(max-width: 600px) 480px"`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#sizes)
    @inlinable static func sizes<S>(_ sizes: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("sizes", value: Text(verbatim: sizes.joined(separator: ", ")))
    }

    /// One or more possible image sources.
    ///
    /// - Parameters:
    ///   - set: The set of possible image sources.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#srcset)
    @inlinable static func srcSet(_ set: SourceSet) -> Self {
        Self("srcset", value: Text(verbatim: set.value))
    }

    /// The partial URL of an image map associated with the element.
    ///
    /// - Parameters:
    ///   - hash: The partial URL string,  starting with `#`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#usemap)
    @inlinable static func useMap(_ hash: any StringProtocol) -> Self {
        Self("usemap", value: Text(verbatim: hash))
    }

    /// The intrinsic width of the image in pixels.
    ///
    /// - Parameters:
    ///   - width: The image width in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#width)
    @inlinable static func width(_ width: UInt) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}

/// Policy to follow when loading a cross-origin image.
public enum CORSPolicy: String {
    /// A CORS request is sent with credentials omitted.
    case anonymous
    /// The CORS request is sent with any credentials included.
    case useCredentials = "use-credentials"
}

/// Possible image decoding hint for the browser.
public enum ImgDecoding: String {
    /// Decode the image synchronously, for atomic presentation with other content.
    case sync
    /// Decode the image asynchronously, to reduce delay in presenting other content.
    case `async`
    /// Default: no preference for the decoding mode. The browser decides what is best for the user.
    case auto
}

/// Possible priority the browser should load the image.
public enum ImgLoading: String {
    /// Loads the image immediately, regardless of whether or not the image is currently within the visible viewport (this is the default value).
    case eager
    /// Defers loading the image until it reaches a calculated distance from the viewport, as defined by the browser.
    case `lazy`
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

/// Possible image sources for a `srcset`.
public enum SourceSet {
    /// Pixel density of the display. ie: 1.5x 2x 3x.
    ///
    /// - Parameters:
    ///   - first: The url string for the 1x version.
    ///   - rest: Pairs of url strings & density multiples.
    case density(String, [(String, Double)])

    /// Pixel density of the display. ie: 1.5x 2x 3x.
    ///
    /// - Parameters:
    ///   - first: The url string for the 1x version.
    ///   - rest: Pairs of url strings & density multiples.
    public static func density(_ first: String, _ rest: (String, Double)...) -> SourceSet {
        .density(first, rest)
    }

    /// Image width descriptor. ie: 480w 800w
    ///
    /// - Parameters:
    ///   - widths: Pairs of url strings & widths.
    case width([(String, UInt)])

    /// Image width descriptor. ie: 480w 800w
    ///
    /// - Parameters:
    ///   - widths: Pairs of url strings & widths.
    public static func width(_ widths: (String, UInt)...) -> SourceSet {
        .width(widths)
    }

    @usableFromInline var value: String {
        switch self {
        case let .density(src1x, rest):
            return ([ src1x ] + rest.map { String(format: "%@ %gx", $0.0, $0.1) }).joined(separator: ", ")
        case let .width(widths):
            return widths.map { "\($0.0) \($0.1)w" } .joined(separator: ", ")
        }
    }
}
