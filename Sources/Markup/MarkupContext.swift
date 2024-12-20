/// Contextual information required to correctly render markup.
public struct MarkupContext {
    /// The current language tag.
    ///
    /// This is used to properly localize `Text`, and is updated by the `lang` attribute.
    public var lang: String

    /// Specifies if xml encoding rules should be used.
    ///
    /// XHTML, SVG, RSS, Atom & more should be serialized as valid XML.
    /// However, inline SVG in an HTML document can use the same loose serialization as HTML.
    public var isXML: Bool

    /// Creates context for encoding markup.
    ///
    /// - Parameters:
    ///   - lang: The language tag for initial content before any `lang` attributes are encoded.
    public init(lang: String, isXML: Bool = false) {
        self.lang = lang
        self.isXML = isXML
    }
}
