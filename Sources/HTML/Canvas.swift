import Markup

/// `<canvas>`: The Graphics Canvas  element
///
/// Use the `<canvas>` HTML element with either the canvas scripting API or the WebGL API to draw graphics and animations.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas)
public typealias Canvas<Content: HTMLContent> = Element<Tags.canvas, Content>
extension Tags { public enum canvas: HTMLTagName { public static let name = "canvas" } }

public extension Attribute<Tags.canvas> {
    /// The height of the coordinate space in CSS pixels.
    ///
    /// - Parameters:
    ///   - height: The canvas height.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas#height)
    @inlinable static func height(_ height: UInt) -> Self {
        Self("height", value: Text(verbatim: String(height)))
    }

    /// The width of the coordinate space in CSS pixels.
    ///
    /// - Parameters:
    ///   - width: The canvas width.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas#width)
    @inlinable static func width(_ width: UInt) -> Self {
        Self("width", value: Text(verbatim: String(width)))
    }
}
