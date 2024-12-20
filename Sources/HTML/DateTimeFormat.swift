#if canImport(Foundation)
import Foundation

/// Valid formats for date strings in HTML, with optional time & timezone.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Date_and_time_formats#local_date_and_time_strings)
public enum DateTimeFormat {
    /// Local date for the specified timezone.
    case date(TimeZone)
    /// Date, time, and timezone.
    case dateTimeGlobal
    /// Local date & time for the specified timezone.
    case dateTimeLocal(TimeZone)

    /// Local date for the current timezone.
    public static var date: Self { .date(.current) }
    /// Local date & time for the current timezone.
    public static var dateTimeLocal: Self { .dateTimeLocal(.current) }

    @inlinable public func format(_ date: Date) -> String {
        switch self {
        case let .date(timeZone):
            return date.formatted(
                Date.ISO8601FormatStyle(timeZone: timeZone)
                    .year().month().day()
            )
        case .dateTimeGlobal:
            return date.formatted(.iso8601)
        case let .dateTimeLocal(timeZone):
            return date.formatted(
                Date.ISO8601FormatStyle(timeZone: timeZone)
                    .year().month().day()
                    .time(includingFractionalSeconds: false)
            )
        }
    }
}
#endif
