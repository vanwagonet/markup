import Markup

/// `<source>`: The Media or Image Source element
///
/// The `<source>` HTML element specifies one or more media resources for the `<picture>`, `<audio>`, and `<video>` elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source)
public typealias Source = VoidElement<Tags.source>
extension Tags { public enum source: HTMLTagName { public static let name = "source" } }

public extension Attribute<Tags.source> {
    /// The intrinsic height of the image in pixels.
    ///
    /// - Parameters:
    ///   - height: The image height in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#height)
    @inlinable static func height(_ height: UInt) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// Specifies the media query for the resource's intended media.
    ///
    /// - Parameters:
    ///   - query: The media query.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#media)
    @inlinable static func media(_ query: any StringProtocol) -> Self {
        Self("media", value: Text(verbatim: query))
    }

    /// Specifies a list of source sizes that describe the final rendered width of the image. Allowed if the parent of `<source>` is `<picture>`. Not allowed if the parent is `<audio>` or `<video>`.
    ///
    /// - Parameters:
    ///   - sizes: The list of source sizes, each a string of the format (media query) size. ie: `"(max-width: 600px) 480px"`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#sizes)
    @inlinable static func sizes<S: StringProtocol>(_ sizes: S...) -> Self {
        .sizes(sizes)
    }

    /// Specifies a list of source sizes that describe the final rendered width of the image. Allowed if the parent of `<source>` is `<picture>`. Not allowed if the parent is `<audio>` or `<video>`.
    ///
    /// - Parameters:
    ///   - sizes: The list of source sizes, each a string of the format (media query) size. ie: `"(max-width: 600px) 480px"`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#sizes)
    @inlinable static func sizes<S>(_ sizes: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("sizes", value: Text(verbatim: sizes.joined(separator: ", ")))
    }

    /// Specifies the URL of the media resource. Required if the parent of `<source>` is `<audio>` or `<video>`. Not allowed if the parent is `<picture>`.
    ///
    /// - Parameters:
    ///   - src: The url string.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#src)
    @inlinable static func src(_ src: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: src))
    }

    /// Specifies a comma-separated list of one or more image URLs and their descriptors. Required if the parent of `<source>` is `<picture>`. Not allowed if the parent is `<audio>` or `<video>`.
    ///
    /// - Parameters:
    ///   - set: The set of possible image sources.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#srcset)
    @inlinable static func srcSet(_ set: SourceSet) -> Self {
        Self("srcset", value: Text(verbatim: set.value))
    }

    /// Specifies the MIME media type of the image or other media type, optionally including a codecs parameter.
    ///
    /// - Parameters:
    ///   - mime: The mime type.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#type)
    @inlinable static func type(_ mime: any StringProtocol) -> Self {
        Self("type", value: Text(verbatim: mime))
    }

    /// Specifies the intrinsic width of the image in pixels. Allowed if the parent of `<source>` is a `<picture>`. Not allowed if the parent is `<audio>` or `<video>`.
    ///
    /// - Parameters:
    ///   - width: The image width in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source#width)
    @inlinable static func width(_ width: UInt) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}
