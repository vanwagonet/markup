import Markup

/// `<defs>`
///
/// The `<defs>` is used to store graphical objects that will be used at a later time. Objects created inside a `<defs>` element are not rendered directly. To display them you have to reference them (with a `<use>` element for example).
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path)
public typealias Path<Content: AnimationOrDescriptiveContent> = Element<Tags.path, Content>
extension Tags { public enum path: SVGTagName { public static let name = "path" } }

public extension Attribute<Tags.path> {
    /// The `d` attribute defines a path to be drawn.
    ///
    /// - Parameters:
    ///   - path: The path for this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/d)
    @inlinable static func d(_ path: any StringProtocol) -> Self {
        Self("d", value: Text(verbatim: path))
    }
}
