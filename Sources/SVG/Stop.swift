import Markup

/// `<stop>`
///
/// The `<stop>` element defines a color and its position to use on a gradient. This element is always a child of a `<linearGradient>` or `<radialGradient>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/stop)
public typealias Stop<Content: StopContent> = Element<Tags.stop, Content>
extension Tags { public enum stop: SVGTagName { public static let name = "stop" } }

public typealias Opacity = LosslessStringConvertible

public extension Attribute<Tags.stop> {
    /// This attribute defines where the gradient stop is placed along the gradient vector.
    ///
    /// - Parameters:
    ///   - offset: The gradient stop offset.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/stop)
    @inlinable static func offset(_ offset: any Length) -> Self {
        Self("offset", value: Text(verbatim: String(offset)))
    }

    /// The `stop-color` attribute indicates what color to use at a gradient stop.
    ///
    /// - Parameters:
    ///   - color: The gradient stop color.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-color)
    @inlinable static func stopColor(_ color: any StringProtocol) -> Self {
        Self("stop-color", value: Text(verbatim: color))
    }

    /// The `stop-opacity` attribute defines the opacity of a given color gradient stop.
    ///
    /// - Parameters:
    ///   - opacity: The stop opacity.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-opacity)
    @inlinable static func stopOpacity(_ opacity: any Opacity) -> Self {
        Self("stop-opacity", value: Text(verbatim: String(opacity)))
    }
}

public protocol StopContent: Markup {}
public protocol StopContentTagName: TagName {}

// Specific Elements
// extension Tags.animate: StopContentTagName {}
extension Tags.script: StopContentTagName {}
// extension Tags.set: StopContentTagName {}
// extension Tags.style: StopContentTagName {}

extension Array: StopContent where Element: StopContent {}
extension Comment: StopContent {}
extension Element: StopContent where Tag: StopContentTagName {}
extension Either: StopContent where True: StopContent, False: StopContent {}
extension Empty: StopContent {}
extension Optional: StopContent where Wrapped: StopContent {}
extension Pair: StopContent where First: StopContent, Second: StopContent {}
extension VoidElement: StopContent where Tag: StopContentTagName {}
