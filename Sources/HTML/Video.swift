import Markup

/// `<video>`: The Video Embed element
///
/// The `<video>` HTML element embeds a media player which supports video playback into the document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
public typealias Video<Content: HTMLContent> = Element<Tags.video, Content>
extension Tags { public enum video: HTMLTagName { public static let name = "video" } }

public extension Attribute<Tags.video> {
    /// If specified, the video will automatically begin playback as soon as it can do so.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#autoplay)
    @inlinable static var autoPlay: Self {
        Self("autoplay", value: nil)
    }

    /// If this attribute is present, the browser will offer controls to allow the user to control video playback.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#controls)
    @inlinable static var controls: Self {
        Self("controls", value: nil)
    }

    /// Indicates if the fetching of the video file must be done using a CORS request.
    ///
    /// - Parameters:
    ///   - policy: The CORS policy of the video file.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#crossorigin)
    @inlinable static func crossOrigin(_ policy: CORSPolicy) -> Self {
        Self("crossorigin", value: Text(verbatim: policy.rawValue))
    }

    /// The height of the video's display area in pixels.
    ///
    /// - Parameters:
    ///   - height: The video height in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#height)
    @inlinable static func height(_ height: UInt) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// If specified, the video player will automatically seek back to the start upon reaching the end of the video.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#loop)
    @inlinable static var loop: Self {
        Self("loop", value: nil)
    }

    /// A Boolean attribute that indicates whether the video will be initially silenced.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#muted)
    @inlinable static var muted: Self {
        Self("muted", value: nil)
    }

    /// A Boolean attribute indicating that the video is to be played "inline", that is within the element's playback area.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#playsinline)
    @inlinable static var playsInline: Self {
        Self("playsinline", value: nil)
    }

    /// A URL for an image to be shown while the video is downloading.
    ///
    /// - Parameters:
    ///   - url: The url string for the poster image.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#poster)
    @inlinable static func poster(_ url: any StringProtocol) -> Self {
        Self("poster", value: Text(verbatim: url))
    }

    /// A hint to the browser about what the author thinks will lead to the best user experience.
    ///
    /// - Parameters:
    ///   - hint: The hint for what, if anything, the browser should preload.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#preload)
    @inlinable static func preload(_ hint: MediaPreload) -> Self {
        Self("preload", value: Text(verbatim: hint.rawValue))
    }

    /// The URL of the video to embed.
    ///
    /// - Parameters:
    ///   - url: The url string for the video content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#src)
    @inlinable static func src(_ url: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: url))
    }

    /// The width of the video's display area in pixels.
    ///
    /// - Parameters:
    ///   - width: The video width in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#width)
    @inlinable static func width(_ width: UInt) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}
