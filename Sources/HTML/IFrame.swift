import Markup

/// `<iframe>`: The Inline Frame element
///
/// The `<iframe>` HTML element represents a nested browsing context, embedding another HTML page into the current one.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
public typealias IFrame = Element<Tags.iframe, Empty>
extension Tags { public enum iframe: HTMLTagName { public static let name = "iframe" } }

public extension Attribute<Tags.iframe> {
    /// Specifies a Permissions Policy for the `<iframe>`. The policy defines what features are available to the `<iframe>` (for example, access to the microphone, camera, battery, web-share, etc.) based on the origin of the request.
    ///
    /// - Parameters:
    ///   - policy: The policy to apply.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#allow)
    @inlinable static func allow(_ policy: any StringProtocol) -> Self {
        Self("allow", value: Text(verbatim: policy))
    }

    /// The height of the frame in CSS pixels. Default is 150.
    ///
    /// - Parameters:
    ///   - height: The height in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#height)
    @inlinable static func height(_ height: UInt) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// Indicates how the browser should load the iframe.
    ///
    /// - Parameters:
    ///   - hint: The loading hint.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#loading)
    @inlinable static func loading(_ hint: ImgLoading) -> Self {
        Self("loading", value: Text(verbatim: hint.rawValue))
    }

    /// A targetable name for the embedded browsing context. This can be used in the target attribute of the `<a>`, `<form>`, or `<base>` elements; the formtarget attribute of the `<input>` or `<button>` elements; or the windowName parameter in the window.open() method.
    ///
    /// - Parameters:
    ///   - name: The iframs name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// Indicates which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The referrer policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#referrerpolicy)
    @inlinable static func referrerPolicy(_ policy: ReferrerPolicy) -> Self {
        Self("referrerpolicy", value: Text(verbatim: policy.rawValue))
    }

    /// Controls the restrictions applied to the content embedded in the `<iframe>`. The value of the attribute can either be empty to apply all restrictions, or space-separated tokens to lift particular restrictions.
    ///
    /// - Parameters:
    ///   - policy: The sandbox policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#sandbox)
    @inlinable static func sandbox(_ policy: any StringProtocol) -> Self {
        Self("sandbox", value: Text(verbatim: policy))
    }

    /// The URL of the page to embed. Use a value of about:blank to embed an empty page that conforms to the same-origin policy. Also note that programmatically removing an `<iframe>`'s src attribute (e.g. via `Element.removeAttribute()`) causes about:blank to be loaded in the frame in Firefox (from version 65), Chromium-based browsers, and Safari/iOS.
    ///
    /// - Parameters:
    ///   - src: The url string.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#src)
    @inlinable static func src(_ src: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: src))
    }

    /// The width of the frame in CSS pixels. Default is 300.
    ///
    /// - Parameters:
    ///   - width: The width in pixels.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe#width)
    @inlinable static func width(_ width: UInt) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}
