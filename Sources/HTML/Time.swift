#if canImport(Foundation)
import Foundation
#endif
import Markup

/// `<time>`: The (Date) Time element
///
/// The `<time>` HTML element represents a specific period in time. It may include the datetime attribute to translate dates into machine-readable format, allowing for better search engine results or custom features such as reminders.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time)
public typealias Time<Content: HTMLContent> = Element<Tags.time, Content>
extension Tags { public enum time: HTMLTagName { public static let name = "time" } }

public extension Attribute<Tags.time> {
    #if canImport(Foundation)
    /// This attribute indicates the time and/or date of the element.
    ///
    /// - Parameters:
    ///   - date: The date to include.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time#datetime)
    @inlinable static func dateTime(_ date: Date, format: DateTimeFormat = .dateTimeGlobal) -> Self {
        Self("datetime", value: Text(verbatim: format.format(date)))
    }
    #endif

    /// This attribute indicates the time and/or date of the element.
    ///
    /// - Parameters:
    ///   - date: The date to include.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time#datetime)
    @inlinable static func dateTime(_ date: String) -> Self {
        Self("datetime", value: Text(verbatim: date))
    }
}
