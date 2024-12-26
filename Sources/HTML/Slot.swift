import Markup

/// `<slot>`: The Web Component Slot element
///
/// The `<slot>` HTML element—part of the Web Components technology suite—is a placeholder inside a web component that you can fill with your own markup, which lets you create separate DOM trees and present them together.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/slot)
public typealias Slot<Content: HTMLContent> = Element<Tags.slot, Content>
extension Tags { public enum slot: HTMLTagName { public static let name = "slot" } }

public extension Attribute<Tags.slot> {
    /// The slot's name. A named slot is a `<slot>` element with a name attribute.
    ///
    /// - Parameters:
    ///   - name: The name of this slot.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/slot#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }
}
