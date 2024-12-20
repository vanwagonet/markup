/// An Element with a specified tag but never any child content
public struct VoidElement<Tag: TagName>: Markup {
    public typealias Attribute = MarkupAttribute<Tag>

    /// An array of all the attributes of this element.
    public let attributes: [Attribute]

    /// Creates an element with these attributes.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    public init(_ attributes: [Attribute]) {
        self.attributes = attributes
    }

    /// Creates an element with these attributes.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    @inlinable public init(_ attributes: Attribute...) {
        self.init(attributes)
    }

    @inlinable
    public func render(to renderer: MarkupRenderer) {
        let context = renderer.context
        Tag.renderStart(to: renderer, attributes: attributes, selfClose: context.isXML)
        renderer.context = context
    }
}

extension VoidElement: Equatable {
    public static func == (lhs: VoidElement<Tag>, rhs: VoidElement<Tag>) -> Bool {
        lhs.attributes == rhs.attributes
    }
}
