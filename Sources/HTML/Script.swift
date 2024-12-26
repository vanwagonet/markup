import Markup

/// `<script>`: The Script element
///
/// The `<script>` HTML element is used to embed executable code or data; this is typically used to embed or refer to JavaScript code.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script)
public typealias Script<Content: ScriptContent> = Element<Tags.script, Content>
extension Tags { public enum script: MetadataTagName { public static let name = "script" } }

public extension Script {
    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - content: Script content for this element.
    @inlinable init(_ attributes: [Attribute], _ content: String) where Children == InlineScriptContent {
        self.init(attributes) { InlineScriptContent(content) }
    }

    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - content: Script content for this element.
    @inlinable init(_ attributes: Attribute..., content: String) where Children == InlineScriptContent {
        self.init(attributes) { InlineScriptContent(content) }
    }

    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - content: Script content for this element.
    @inlinable init(_ content: String) where Children == InlineScriptContent {
        self.init { InlineScriptContent(content) }
    }
}

public extension Attribute<Tags.script> {
    /// This attribute allows the elimination of parser-blocking JavaScript.
    ///
    /// For classic scripts, if the async attribute is present, then the classic script will be fetched in parallel to parsing and evaluated as soon as it is available.
    ///
    /// For module scripts, if the async attribute is present then the scripts and all their dependencies will be fetched in parallel to parsing and evaluated as soon as they are available.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#async)
    @inlinable static var async: Self {
        Self("async")
    }

    /// Normal script elements pass minimal information to the window.onerror for scripts which do not pass the standard CORS checks. To allow error logging for sites which use a separate domain for static media, use this attribute.
    ///
    /// - Parameters:
    ///   - policy: The CORS policy of the script.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#crossorigin)
    @inlinable static func crossOrigin(_ policy: CORSPolicy) -> Self {
        Self("crossorigin", value: Text(verbatim: policy.rawValue))
    }

    /// This Boolean attribute is set to indicate to a browser that the script is meant to be executed after the document has been parsed.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#defer)
    @inlinable static var `defer`: Self {
        Self("defer")
    }

    /// Provides a hint of the relative priority to use when fetching an external script.
    ///
    /// - Parameters:
    ///   - priority: The priority hint for this script.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#fetchpriority)
    @inlinable static func fetchPriority(_ priority: ScriptFetchPriority) -> Self {
        Self("fetchpriority", value: Text(verbatim: priority.rawValue))
    }

    /// This attribute contains inline metadata that a user agent can use to verify that a fetched resource has been delivered without unexpected manipulation.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#integrity]
    @inlinable static func integrity(_ value: any StringProtocol) -> Self {
        Self("integrity", value: Text(verbatim: value))
    }

    /// This Boolean attribute is set to indicate that the script should not be executed in browsers that support ES modules — in effect, this can be used to serve fallback scripts to older browsers that do not support modular JavaScript code.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#nomodule)
    @inlinable static var noModule: Self {
        Self("nomodule")
    }

    /// A cryptographic nonce (number used once) to allow scripts in a script-src Content-Security-Policy
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#nonce]
    @inlinable static func nonce(_ value: any StringProtocol) -> Self {
        Self("nonce", value: Text(verbatim: value))
    }

    /// Indicates which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The referrer policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#referrerpolicy)
    @inlinable static func referrerPolicy(_ policy: ReferrerPolicy) -> Self {
        Self("referrerpolicy", value: Text(verbatim: policy.rawValue))
    }

    /// This attribute specifies the URI of an external script; this can be used as an alternative to embedding a script directly within a document.
    ///
    /// - Parameters:
    ///   - src: The URI of an external script.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#src)
    @inlinable static func src(_ src: any StringProtocol) -> Self {
        Self("src", value: Text(verbatim: src))
    }

    /// This attribute indicates the type of script represented.
    ///
    /// - Parameters:
    ///   - type: The type for this script.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script/type)
    @inlinable static func type(_ type: ScriptType) -> Self {
        Self("type", value: Text(verbatim: type.rawValue))
    }

    /// This attribute indicates the type of script represented.
    ///
    /// - Parameters:
    ///   - mime: The string mime type for the resource.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script/type)
    @inlinable static func type(_ mime: any StringProtocol) -> Self {
        Self("type", value: Text(verbatim: mime))
    }
}

/// Provides a hint of the relative priority to use when fetching an external script.
public enum ScriptFetchPriority: String {
    /// Don't set a preference for the fetch priority. This is the default. It is used if no value or an invalid value is set.
    case auto

    /// Fetch the external script at a high priority relative to other external scripts.
    case high

    /// Fetch the external script at a low priority relative to other external scripts.
    case low
}

/// This attribute indicates the type of script represented.
public enum ScriptType: String {
    /// This value indicates that the body of the element contains an import map. The import map is a JSON object that developers can use to control how the browser resolves module specifiers when importing JavaScript modules.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script/type/importmap)
    case importMap = "importmap"
    /// This value causes the code to be treated as a JavaScript module. The processing of the script contents is deferred.
    case module
}

public protocol ScriptContent: Markup {}
extension Empty: ScriptContent {}

/// Script content.
public struct InlineScriptContent: Equatable, ScriptContent {
    public typealias Content = Never

    public let string: String

    /// Creates inline script content.
    ///
    /// - Parameters:
    ///   - comment: A string of code for this script.
    public init(_ string: String) {
        self.string = string
    }

    public func render(to renderer: any MarkupRenderer) {
        // https://html.spec.whatwg.org/multipage/scripting.html#restrictions-for-contents-of-script-elements
        let comment = "<!--".utf8
        let script = "<script".utf8
        let end = "</script".utf8

        let utf8 = string.utf8
        var start = utf8.startIndex
        for current in utf8.indices {
            switch utf8[current] {
            case 60 /* < */ where (
                (utf8.index(current, offsetBy: 4) <= utf8.endIndex &&
                 utf8[current ..< utf8.index(current, offsetBy: 4)].elementsEqual(comment)
                ) ||
                (utf8.index(current, offsetBy: 7) <= utf8.endIndex &&
                 utf8[current ..< utf8.index(current, offsetBy: 7)].elementsEqual(script)
                ) ||
                (utf8.index(current, offsetBy: 8) <= utf8.endIndex &&
                 utf8[current ..< utf8.index(current, offsetBy: 8)].elementsEqual(end)
                )
            ):
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("\\x3C")
                start = utf8.index(after: current)
            default:
                ()
            }
        }
        if start < utf8.endIndex {
            renderer.renderUTF8CodeUnits(utf8[start ..< utf8.endIndex])
        }
    }
}
