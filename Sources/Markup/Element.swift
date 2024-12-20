/// An Element with a specified tag and children
public struct Element<Tag: TagName, Children: Markup>: Markup {
    public typealias Attribute = MarkupAttribute<Tag>
    public typealias Content = Never

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

    /// Creates an empty element with these attributes.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    @inlinable public init(_ attributes: [Attribute]) where Children == Empty {
        self.init(attributes, children: Empty.init)
    }

    /// Creates an empty element with these attributes.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    @inlinable public init(_ attributes: Attribute...) where Children == Empty {
        self.init(attributes, children: Empty.init)
    }

    @inlinable
    public func render(to renderer: MarkupRenderer) {
        let context = renderer.context
        if context.isXML, Children.self == Empty.self {
            Tag.renderStart(to: renderer, attributes: attributes, selfClose: true)
        } else {
            Tag.renderStart(to: renderer, attributes: attributes, selfClose: false)
            children().render(to: renderer)
            Tag.renderEnd(to: renderer)
        }
        renderer.context = context
    }
}

extension Element: Equatable where Children: Equatable {
    public static func == (lhs: Element<Tag, Children>, rhs: Element<Tag, Children>) -> Bool {
        lhs.attributes == rhs.attributes && lhs.children() == rhs.children()
    }
}
