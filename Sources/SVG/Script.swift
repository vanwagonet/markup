import Markup

/// `<script>`
///
/// The `<script>` SVG element allows to add scripts to an SVG document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/script)
public typealias Script<Content: ScriptContent> = Element<Tags.script, Content>
extension Tags { public enum script: SVGTagName { public static let name = "script" } }

public extension Attribute<Tags.script> {
    /// Normal script elements pass minimal information to the window.onerror for scripts which do not pass the standard CORS checks. To allow error logging for sites which use a separate domain for static media, use this attribute.
    ///
    /// - Parameters:
    ///   - policy: The CORS policy of the script.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#crossorigin)
    @inlinable static func crossOrigin(_ policy: CORSPolicy) -> Self {
        Self("crossorigin", value: Text(verbatim: policy.rawValue))
    }

    /// This attribute indicates the type of script represented.
    ///
    /// - Parameters:
    ///   - mime: The string mime type for the resource.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/type)
    @inlinable static func type(_ mime: any StringProtocol) -> Self {
        Self("type", value: Text(verbatim: mime))
    }
}

public protocol ScriptContent: Markup {}
extension CData: ScriptContent {}
extension Empty: ScriptContent {}

/// Policy to follow when loading a cross-origin image.
public enum CORSPolicy: String {
    /// A CORS request is sent with credentials omitted.
    case anonymous
    /// The CORS request is sent with any credentials included.
    case useCredentials = "use-credentials"
}
