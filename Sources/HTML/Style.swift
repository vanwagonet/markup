import Markup

/// `<style>`: The Style Information element
///
/// The `<style>` HTML element contains style information for a document, or part of a document. It contains CSS, which is applied to the contents of the document containing the `<style>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style)
public typealias Style = Element<Tags.style, Text>
extension Tags { public enum style: MetadataTagName { public static let name = "style" } }

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
