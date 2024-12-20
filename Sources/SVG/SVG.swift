import Markup

/// `<svg>`: Scalable Vector Graphics
///
/// The `<svg>` SVG element is a container that defines a new coordinate system and viewport. It is used as the outermost element of SVG documents, but it can also be used to embed an SVG fragment inside an SVG or HTML document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg)
public struct SVG<Children: SVGContent>: Markup {
    public typealias Attribute = MarkupAttribute<Tag>
    public typealias Content = Never
    public typealias Tag = Tags.svg

    /// An array of all the attributes of this element.
    public let attributes: [Attribute]

    /// A closure to get the children of this element.
    public let children: () -> Children

    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - children: A @MarkupBuilder closure to create the element's children.
    public init(_ attributes: [Attribute], @MarkupBuilder children: @escaping () -> Children) {
        self.attributes = attributes
        self.children = children
    }

    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - children: A @MarkupBuilder closure to create the element's children.
    @inlinable public init(_ attributes: Attribute..., @MarkupBuilder children: @escaping () -> Children) {
        self.init(attributes, children: children)
    }

    @inlinable
    public func render(to renderer: MarkupRenderer) {
        let context = renderer.context
        renderer.context.isXML = true
        Tags.svg.renderStart(to: renderer, attributes: attributes, selfClose: false)
        children().render(to: renderer)
        Tags.svg.renderEnd(to: renderer)
        renderer.context = context
    }
}

extension SVG: Equatable where Children: Equatable {
    public static func == (lhs: SVG<Children>, rhs: SVG<Children>) -> Bool {
        lhs.attributes == rhs.attributes && lhs.children() == rhs.children()
    }
}

/// A namespace for holding `TagName` declarations, to keep them from adding noise, or conflicting with element aliases.
public enum Tags {}

extension Tags { public enum svg: SVGTagName { public static let name = "svg" } }

public extension Attribute<Tags.svg> {
    /// Specifies the XML Namespace of the document.
    ///
    /// - Parameters:
    ///   - namespace: The XML Namespace to use.
    ///
    /// Default value is "http://www.w3.org/2000/svg".
    @inlinable static func xmlns(_ namespace: SVGNamespace) -> Self {
        Self("xmlns", value: Text(verbatim: namespace.rawValue))
    }
}

/// Specifies the XML Namespaces for a SVG document.
public enum SVGNamespace: String {
    /// The XML Namespace for a SVG document.
    case svg = "http://www.w3.org/2000/svg"
}
