import Markup

/// Core attributes for SVG elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute#generic_attributes)
public protocol SVGTagName: TagName {}

public extension Attribute where Tag: SVGTagName {
    /// A space-separated list of the classes of the element.
    ///
    /// - Parameters:
    ///   - classes: The list of class names.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/class)
    @inlinable static func `class`<S: StringProtocol>(_ classes: S...) -> Self {
        self.class(classes)
    }

    /// A space-separated list of the classes of the element.
    ///
    /// - Parameters:
    ///   - classes: The list of class names.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/class)
    @inlinable static func `class`<S>(_ classes: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("class", value: Text(verbatim: classes.joined(separator: " ")))
    }

    /// Forms a class of attributes, called custom data attributes, that allow proprietary information to be exchanged between the SVG
    /// and its DOM representation that may be used by scripts.
    ///
    /// - Parameters:
    ///   - name: The string name.
    ///   - value: The string value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/data-*)
    @inlinable static func data(_ name: any StringProtocol, value: any StringProtocol) -> Self {
        Self("data-\(name)", value: Text(verbatim: value))
    }

    /// Defines a unique identifier (ID) which must be unique in the whole document.
    ///
    /// - Parameters:
    ///   - id: An identifier for this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/id)
    @inlinable static func id(_ id: any StringProtocol) -> Self {
        Self("id", value: Text(verbatim: id))
    }

    /// The lang attribute specifies the primary language used in contents and attributes containing text content of particular elements.
    ///
    /// - Parameters:
    ///   - language: A single "language tag" in the format defined in
    ///     [RFC 5646: Tags for Identifying Languages (also known as BCP 47)](https://datatracker.ietf.org/doc/html/rfc5646).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lang)
    @inlinable static func lang(_ language: any StringProtocol) -> Self {
        Self("lang", value: Text(verbatim: language))
    }

    /// Contains CSS styling declarations to be applied to the element.
    ///
    /// - Parameters:
    ///   - css: A string of css to apply to this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/style)
    @inlinable static func style(_ css: any StringProtocol) -> Self {
        Self("style", value: Text(verbatim: css))
    }

    /// The tabindex attribute allows you to control whether an element is focusable and to define the relative order of the element for the purposes of sequential focus navigation.
    ///
    /// - Parameters:
    ///   - index: The tab index.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tabindex)
    @inlinable static func tabIndex(_ index: any BinaryInteger) -> Self {
        Self("tabindex", value: Text(verbatim: String(index)))
    }
}
