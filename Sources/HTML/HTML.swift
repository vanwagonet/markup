import Markup

/// `<html>`: The HTML Document / Root element
///
/// The `<html>` HTML element represents the root (top-level element) of an HTML document, so it is also referred to as the root element.
/// All other elements must be descendants of this element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html)
public struct HTML<Children: HTMLContent>: Markup {
    public typealias Attribute = MarkupAttribute<Tag>
    public typealias Content = Never
    public typealias Tag = Tags.html

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
        renderer.context.isXML = attributes.contains { $0.name == "xmlns" }
        renderer.renderStaticString("<!DOCTYPE html>")
        Tags.html.renderStart(to: renderer, attributes: attributes, selfClose: false)
        children().render(to: renderer)
        Tags.html.renderEnd(to: renderer)
        renderer.context = context
    }
}

extension HTML: Equatable where Children: Equatable {
    public static func == (lhs: HTML<Children>, rhs: HTML<Children>) -> Bool {
        lhs.attributes == rhs.attributes && lhs.children() == rhs.children()
    }
}

/// A namespace for holding `TagName` declarations, to keep them from adding noise, or conflicting with element aliases.
public enum Tags {}

extension Tags { public enum html: HTMLTagName { public static let name = "html" } }

public extension Attribute<Tags.html> {
    /// Specifies the XML Namespace of the document.
    ///
    /// - Parameters:
    ///   - namespace: The XML Namespace to use.
    ///
    /// Default value is "http://www.w3.org/1999/xhtml".
    /// This is required in documents parsed with XML parsers, and optional in text/html documents.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html#xmlns)
    @inlinable static func xmlns(_ namespace: HTMLNamespace) -> Self {
        Self("xmlns", value: Text(verbatim: namespace.rawValue))
    }
}

/// Specifies the XML Namespaces for an HTML document.
public enum HTMLNamespace: String {
    /// The XML Namespace for an XHTML document.
    case xhtml = "http://www.w3.org/1999/xhtml"
}
