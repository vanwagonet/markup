import Markup

/// `<meter>`: The HTML Meter element
///
/// The `<meter>` HTML element represents either a scalar value within a known range or a fractional value.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter)
public typealias Meter<Content: HTMLContent> = Element<Tags.meter, Content>
extension Tags { public enum meter: HTMLTagName { public static let name = "meter" } }

public extension Attribute<Tags.meter> {
    /// The `<form>` element to associate the meter with (its form owner).
    ///
    /// - Parameters:
    ///   - id: The id of a `<form>` in the same document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#form)
    @inlinable static func form(_ id: any StringProtocol) -> Self {
        Self("form", value: Text(verbatim: id))
    }

    /// The lower numeric bound of the high end of the measured range.
    ///
    /// - Parameters:
    ///   - value: The high value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#high)
    @inlinable static func high(_ value: any Numeric) -> Self {
        Self("high", value: Text(verbatim: "\(value)"))
    }

    /// The upper numeric bound of the low end of the measured range.
    ///
    /// - Parameters:
    ///   - value: The low value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#low)
    @inlinable static func low(_ value: any Numeric) -> Self {
        Self("low", value: Text(verbatim: "\(value)"))
    }

    /// The upper numeric bound of the measured range.
    ///
    /// - Parameters:
    ///   - value: The max value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#max)
    @inlinable static func max(_ value: any Numeric) -> Self {
        Self("max", value: Text(verbatim: "\(value)"))
    }

    /// The lower numeric bound of the measured range.
    ///
    /// - Parameters:
    ///   - value: The min value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#min)
    @inlinable static func min(_ value: any Numeric) -> Self {
        Self("min", value: Text(verbatim: "\(value)"))
    }

    /// This attribute indicates the optimal numeric value.
    ///
    /// - Parameters:
    ///   - value: The optimum value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#optimum)
    @inlinable static func optimum(_ value: any Numeric) -> Self {
        Self("optimum", value: Text(verbatim: "\(value)"))
    }

    /// The current numeric value.
    ///
    /// - Parameters:
    ///   - value: The current value.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter#value)
    @inlinable static func value(_ value: any Numeric) -> Self {
        Self("value", value: Text(verbatim: "\(value)"))
    }
}
