import Markup

/// `<audio>`: The Embed Audio element
///
/// The `<audio>` HTML element is used to embed sound content in documents.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
public typealias Audio<Content: HTMLContent> = Element<Tags.audio, Content>
extension Tags { public enum audio: HTMLTagName { public static let name = "audio" } }

public extension Attribute<Tags.audio> {
    /// If specified, the audio will automatically begin playback as soon as it can do so.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#autoplay)
    @inlinable static var autoPlay: Self {
        Self("autoplay")
    }

    /// If this attribute is present, the browser will offer controls to allow the user to control audio playback.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#controls)
    @inlinable static var controls: Self {
        Self("controls")
    }

    /// Indicates if the fetching of the audio file must be done using a CORS request.
    ///
    /// - Parameters:
    ///   - policy: The CORS policy of the audio file.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#crossorigin)
    @inlinable static func crossOrigin(_ policy: CORSPolicy) -> Self {
        Self("crossorigin", value: Text(verbatim: policy.rawValue))
    }

    /// If specified, the audio player will automatically seek back to the start upon reaching the end of the audio.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#loop)
    @inlinable static var loop: Self {
        Self("loop")
    }

    /// A Boolean attribute that indicates whether the audio will be initially silenced.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#muted)
    @inlinable static var muted: Self {
        Self("muted")
    }

    /// A hint to the browser about what the author thinks will lead to the best user experience.
    ///
    /// - Parameters:
    ///   - hint: The hint for what, if anything, the browser should preload.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#preload)
    @inlinable static func preload(_ hint: MediaPreload) -> Self {
        Self("preload", value: Text(verbatim: hint.rawValue))
    }

    /// The URL of the audio to embed.
    ///
    /// - Parameters:
    ///   - url: The url string for the audio content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#src)
    @inlinable static func src(_ url: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: url))
    }
}

/// A hint to the browser about what the author thinks will lead to the best user experience.
public enum MediaPreload: String {
    /// Indicates that the audio should not be preloaded.
    case none
    /// Indicates that only audio metadata (e.g. length) is fetched.
    case metadata
    /// Indicates that the whole audio file can be downloaded, even if the user is not expected to use it.
    case auto
}
