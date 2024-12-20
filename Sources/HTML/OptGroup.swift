import Markup

/// `<optgroup>`: The Option Group element
///
/// The `<optgroup>` HTML element creates a grouping of options within a `<select>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup)
public typealias OptGroup<Content: HTMLContent> = Element<Tags.optgroup, Content>
extension Tags { public enum optgroup: HTMLTagName { public static let name = "optgroup" } }

public extension OptGroup {
    /// The name of the group of options, which the browser can use when labeling the options in the user interface.
    ///
    /// - Parameters:
    ///   - label: The string label for this group.
    ///   - attributes: Additional attributes.
    ///   - children: Children markup.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#label)
    init(label: Text, attributes: [Attribute], @MarkupBuilder children: @escaping () -> Children) {
        self.init([ Attribute("label", value: label) ] + attributes, children: children)
    }

    /// The name of the group of options, which the browser can use when labeling the options in the user interface.
    ///
    /// - Parameters:
    ///   - label: The string label for this group.
    ///   - attributes: Additional attributes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#label)
    @inlinable init(label: Text, _ attributes: Attribute...) where Children == Empty {
        self.init([ Attribute("label", value: label) ] + attributes, children: Empty.init)
    }

    /// The name of the group of options, which the browser can use when labeling the options in the user interface.
    ///
    /// - Parameters:
    ///   - label: The string label for this group.
    ///   - attributes: Additional attributes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#label)
    @inlinable init(label: Text, _ attributes: [Attribute]) where Children == Empty {
        self.init([ Attribute("label", value: label) ] + attributes, children: Empty.init)
    }

    /// The name of the group of options, which the browser can use when labeling the options in the user interface.
    ///
    /// - Parameters:
    ///   - label: The string label for this group.
    ///   - attributes: Additional attributes.
    ///   - children: Children markup.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#label)
    @inlinable init(label: Text, _ attributes: Attribute..., @MarkupBuilder children: @escaping () -> Children) {
        self.init([ Attribute("label", value: label) ] + attributes, children: children)
    }

    /// The name of the group of options, which the browser can use when labeling the options in the user interface.
    ///
    /// - Parameters:
    ///   - label: The string label for this group.
    ///   - attributes: Additional attributes.
    ///   - children: Children markup.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#label)
    @inlinable init(label: Text, _ attributes: [Attribute], @MarkupBuilder children: @escaping () -> Children) {
        self.init([ Attribute("label", value: label) ] + attributes, children: children)
    }
}

public extension Attribute<Tags.optgroup> {
    /// If this Boolean attribute is set, none of the items in this option group are selectable.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#disabled)
    @inlinable static var disabled: Self {
        Self("disabled", value: nil)
    }
}
