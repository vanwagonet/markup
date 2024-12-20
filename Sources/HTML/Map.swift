import Markup

/// `<map>`: The Image Map element
///
/// The `<map>` HTML element is used with `<area>` elements to define an image map (a clickable link area).
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map)
public typealias Map<Content: HTMLContent> = Element<Tags.map, Content>
extension Tags { public enum map: HTMLTagName { public static let name = "map" } }

public extension Attribute<Tags.map> {
    /// The name attribute gives the map a name so that it can be referenced.
    ///
    /// If the `id` attribute is also specified, both attributes must have the same value.
    ///
    /// - Parameters:
    ///   - name: The name of this map.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/map#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }
}
