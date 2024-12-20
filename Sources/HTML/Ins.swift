#if canImport(Foundation)
import Foundation
#endif
import Markup

/// `<ins>`: The Inserted Text element
///
/// The `<ins>` HTML element represents a range of text that has been added to a document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins)
public typealias Ins<Content: HTMLContent> = Element<Tags.ins, Content>
extension Tags { public enum ins: HTMLTagName { public static let name = "ins" } }

public extension Attribute<Tags.ins> {
    /// A URI for a resource that explains the change (for example, meeting minutes).
    ///
    /// - Parameters:
    ///   - url: The url string for the source.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins#cite)
    @inlinable static func cite(_ url: any StringProtocol) -> Self {
        Self("cite", value: Text(verbatim: url))
    }

    #if canImport(Foundation)
    /// This attribute indicates the time and date of the change and must be a valid date with an optional time string.
    ///
    /// - Parameters:
    ///   - date: The date to include.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins#datetime)
    @inlinable static func dateTime(_ date: Date, format: DateTimeFormat = .dateTimeGlobal) -> Self {
        Self("datetime", value: Text(verbatim: format.format(date)))
    }
    #endif

    /// This attribute indicates the time and date of the change and must be a valid date with an optional time string.
    ///
    /// - Parameters:
    ///   - date: The date to include.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins#datetime)
    @inlinable static func dateTime(_ date: String) -> Self {
        Self("datetime", value: Text(verbatim: date))
    }
}
