/// An attribute extends an HTML or XML element, changing its behavior or providing metadata.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Glossary/Attribute)
public struct Attribute<Tag: TagName>: Equatable {
    /// The name of the attribute.
    public let name: String

    /// An optional attribute value.
    public let value: Text?

    /// Creates an attribute with the specified name and optional value.
    ///
    /// - Parameters:
    ///   - name: The string name of the attribute.
    ///   - value: The optional text value for the attribute.
    public init(_ name: String, value: Text? = nil) {
        self.name = name
        self.value = value
    }

    public func render(to renderer: MarkupRenderer) {
        renderer.render(name)
        guard let value else { return }
        renderer.renderUTF8CodeUnit(61) // =
        renderer.renderUTF8CodeUnit(34) // "
        let utf8 = value.string(for: renderer.context.lang).utf8
        var start = utf8.startIndex
        for current in utf8.indices {
            switch utf8[current] {
            case 34: // "
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&quot;")
                start = utf8.index(after: current)
            case 38: // &
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&amp;")
                start = utf8.index(after: current)
            case 60: // <
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&lt;")
                start = utf8.index(after: current)
            case 62: // >
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&gt;")
                start = utf8.index(after: current)
            default:
                ()
            }
        }
        if start < utf8.endIndex {
            renderer.renderUTF8CodeUnits(utf8[start ..< utf8.endIndex])
        }
        renderer.renderUTF8CodeUnit(34) // "
    }

    @inlinable public static func `if`(_ condition: Bool, _ attribute: Self) -> Self {
        condition ? attribute : .init("")
    }
}

public typealias MarkupAttribute = Attribute

extension Array {
    @inlinable
    public func render<Tag>(to renderer: MarkupRenderer) where Element == Attribute<Tag> {
        // Update context.lang before encoding attributes since they can also be localized for this language.
        if let lang = last(where: { $0.name == "lang" })?.value {
            renderer.context.lang = lang.string(for: renderer.context.lang)
        }

        for attribute in self where !attribute.name.isEmpty {
            renderer.renderUTF8CodeUnit(32) // " "
            attribute.render(to: renderer)
        }
    }
}
