import Markup

/// `<metadata>`
///
/// The `<metadata>` SVG element adds metadata to SVG content. Metadata is structured information about data. The contents of `<metadata>` should be elements from other XML namespaces such as RDF, FOAF, etc.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/metadata)
public typealias Metadata<Content: Markup> = Element<Tags.metadata, Content>
extension Tags { public enum metadata: SVGTagName { public static let name = "metadata" } }
