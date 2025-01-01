import Markup

/// `<radialGradient>`
///
/// The `<radialGradient>` SVG element lets authors define radial gradients that can be applied to fill or stroke of graphical elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/radialGradient)
public typealias RadialGradient<Content: GradientContent> = Element<Tags.radialGradient, Content>
extension Tags { public enum radialGradient: SVGTagName { public static let name = "radialGradient" } }

public extension Attribute<Tags.radialGradient> {
    /// The `fr` attribute defines the radius of the focal point for the radial gradient.
    ///
    /// - Parameters:
    ///   - radius: The radius.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fr)
    @inlinable static func fr(_ radius: any Length) -> Self {
        Self("fr", value: Text(verbatim: String(radius)))
    }

    /// The `fx` attribute defines the x-axis coordinate of the focal point for a radial gradient.
    ///
    /// - Parameters:
    ///   - fx: The focal point x.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fx)
    @inlinable static func fx(_ fx: any Length) -> Self {
        Self("fx", value: Text(verbatim: String(fx)))
    }

    /// The `fy` attribute defines the y-axis coordinate of the focal point for a radial gradient.
    ///
    /// - Parameters:
    ///   - fy: The focal point y.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fy)
    @inlinable static func fy(_ fy: any Length) -> Self {
        Self("fy", value: Text(verbatim: String(fy)))
    }
}
