import Markup

/// `<track>`: The Embed Text Track element
///
/// The `<track>` HTML element is used as a child of the media elements, `<audio>` and `<video>`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track)
public typealias Track = VoidElement<Tags.track>
extension Tags { public enum track: HTMLTagName { public static let name = "track" } }

public extension Attribute<Tags.track> {
    /// This attribute indicates that the track should be enabled unless the user's preferences indicate that another track is more appropriate.
    /// This may only be used on one track element per media element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#default)
    @inlinable static var `default`: Self {
        Self("default", value: nil)
    }

    /// How the text track is meant to be used. If omitted the default kind is subtitles. If the attribute contains an invalid value, it will use metadata.
    ///
    /// - Parameters:
    ///   - kind: The kind of text track.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#kind)
    @inlinable static func kind(_ kind: TrackKind) -> Self {
        Self("kind", value: Text(verbatim: kind.rawValue))
    }

    /// A user-readable title of the text track which is used by the browser when listing available text tracks.
    ///
    /// - Parameters:
    ///   - label: The text label for this track.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#label)
    @inlinable static func label(_ label: Text) -> Self {
        Self("label", value: label)
    }

    /// Address of the track (.vtt file). Must be a valid URL. This attribute must be specified and its URL value must have the same origin as the document
    /// — unless the `<audio>` or `<video>` parent element of the track element has a crossorigin attribute.
    ///
    /// - Parameters:
    ///   - url: The url string for the vtt content.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#src)
    @inlinable static func src(_ url: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: url))
    }

    /// Language of the track text data. It must be a valid BCP 47 language tag. If the kind attribute is set to subtitles, then `srcLang` must be defined.
    ///
    /// - Parameters:
    ///   - language: A single "language tag" in the format defined in
    ///     [RFC 5646: Tags for Identifying Languages (also known as BCP 47)](https://datatracker.ietf.org/doc/html/rfc5646).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#srclang)
    @inlinable static func srcLang(_ language: any StringProtocol) -> Self {
        Self("srclang", value: Text(verbatim: language))
    }
}

/// How the text track is meant to be used.
public enum TrackKind: String {
    /// Closed captions provide a transcription and possibly a translation of audio.
    ///
    /// It may include important non-verbal information such as music cues or sound effects. It may indicate the cue's source (e.g. music, text, character).
    ///
    /// Suitable for users who are deaf or when the sound is muted.
    case captions
    /// Chapter titles are intended to be used when the user is navigating the media resource.
    case chapters
    /// Textual description of the video content.
    ///
    /// Suitable for users who are blind or where the video cannot be seen.
    case descriptions
    /// Tracks used by scripts. Not visible to the user.
    case metadata
    /// Subtitles provide translation of content that cannot be understood by the viewer. For example speech or text that is not English in an English language film.
    ///
    /// Subtitles may contain additional content, usually extra background information.
    /// For example the text at the beginning of the Star Wars films, or the date, time, and location of a scene.
    case subtitles
}
