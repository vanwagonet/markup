import Markup

/// `<input>`: The Input (Form Input) element
///
/// The `<input>` HTML element is used to create interactive controls for forms in order to accept data from the user.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input)
public typealias Input = VoidElement<Tags.input>
extension Tags { public enum input: HTMLTagName { public static let name = "input" } }

public extension Attribute<Tags.input> {
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
        self.sizes(sizes)
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
public enum InputType: String {
    /// A CORS request is sent with credentials omitted.
    case anonymous
    /// The CORS request is sent with any credentials included.
    case useCredentials = "use-credentials"
}
