import Markup

/// `<progress>`: The Progress Indicator element
///
/// The `<progress>` HTML element displays an indicator showing the completion progress of a task, typically displayed as a progress bar.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress)
public typealias Progress<Content: HTMLContent> = Element<Tags.progress, Content>
extension Tags { public enum progress: HTMLTagName { public static let name = "progress" } }

public extension Attribute<Tags.progress> {
    /// This attribute describes how much work the task indicated by the progress element requires. The max attribute, if present, must have a value greater than 0 and be a valid floating point number. The default value is 1.
    ///
    /// - Parameters:
    ///   - value: The maximum value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress#max)
    @inlinable static func max(_ value: any LosslessStringConvertible) -> Self {
        Self("max", value: Text(verbatim: String(value)))
    }

    /// This attribute specifies how much of the task that has been completed. It must be a valid floating point number between 0 and max, or between 0 and 1 if max is omitted. If there is no value attribute, the progress bar is indeterminate; this indicates that an activity is ongoing with no indication of how long it is expected to take.
    ///
    /// - Parameters:
    ///   - value: The value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress#value)
    @inlinable static func value(_ value: any LosslessStringConvertible) -> Self {
        Self("value", value: Text(verbatim: String(value)))
    }
}
