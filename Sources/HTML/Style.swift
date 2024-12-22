import Markup

/// `<style>`: The Style Information element
///
/// The `<style>` HTML element contains style information for a document, or part of a document. It contains CSS, which is applied to the contents of the document containing the `<style>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style)
public typealias Style = Element<Tags.style, StyleContent>
extension Tags { public enum style: MetadataTagName { public static let name = "style" } }

public extension Style {
    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - content: Style content for this element.
    @inlinable init(_ attributes: [Attribute], _ content: String = "") {
        self.init(attributes) { StyleContent(content) }
    }

    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - attributes: The list of attributes.
    ///   - content: Style content for this element.
    @inlinable init(_ attributes: Attribute..., content: String = "") {
        self.init(attributes) { StyleContent(content) }
    }

    /// Creates an element with these attributes and children.
    ///
    /// - Parameters:
    ///   - content: Style content for this element.
    @inlinable init(_ content: String = "") {
        self.init { StyleContent(content) }
    }
}

public extension Attribute<Tags.style> {
    /// This attribute explicitly indicates that certain operations should be blocked on the fetching of critical subresources.
    ///
    /// - Parameters:
    ///   - operations: The operations that should be blocked.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style#blocking)
    @inlinable static func blocking(_ operations: Blocking...) -> Self {
        Self("blocking", value: Text(verbatim: operations.map(\.rawValue).joined(separator: " ")))
    }

    /// This attribute defines which media the style should be applied to.
    ///
    /// - Parameters:
    ///   - query: The media query for these styles.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style#media)
    @inlinable static func media(_ query: any StringProtocol) -> Self {
        Self("media", value: Text(verbatim: query))
    }
}

/// This attribute explicitly indicates that certain operations should be blocked on the fetching of critical subresources.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style#blocking)
public enum Blocking: String {
    /// The rendering of content on the screen is blocked.
    case render
}

public struct StyleContent: Markup {
    public let content: String

    public init(_ content: String) {
        self.content = content
    }

    public func render(to renderer: any MarkupRenderer) {
        let utf8 = content.utf8
        var start = utf8.startIndex
        for current in utf8.indices {
            switch utf8[current] {
            // </
            case 60 where (utf8.index(after: current) < utf8.endIndex && utf8[utf8.index(after: current)] == 47):
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("\\3C\\2F")
                start = utf8.index(current, offsetBy: 2)
            default:
                ()
            }
        }
        if start < utf8.endIndex {
            renderer.renderUTF8CodeUnits(utf8[start ..< utf8.endIndex])
        }
    }
}
