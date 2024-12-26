import Markup

/// `<optgroup>`: The Option Group element
///
/// The `<optgroup>` HTML element creates a grouping of options within a `<select>` element.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup)
public typealias OptGroup<Content: OptGroupContent> = Element<Tags.optgroup, Content>
extension Tags { public enum optgroup: TagName { public static let name = "optgroup" } }

public extension Attribute<Tags.optgroup> {
    /// If this Boolean attribute is set, none of the items in this option group are selectable.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#disabled)
    @inlinable static var disabled: Self {
        Self("disabled")
    }

    /// The name of the group of options, which the browser can use when labeling the options in the user interface. This attribute is mandatory if this element is used.
    ///
    /// - Parameters:
    ///   - label: The label for this group.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/optgroup#label)
    @inlinable static func label(_ label: Text) -> Self {
        Self("label", value: label)
    }
}

public protocol OptGroupContent: Markup {}
public protocol OptGroupTagName: TagName {}

extension Array: OptGroupContent where Element: OptGroupContent {}
extension Comment: OptGroupContent {}
extension Element: OptGroupContent where Tag: OptGroupTagName {}
extension Either: OptGroupContent where True: OptGroupContent, False: OptGroupContent {}
extension Empty: OptGroupContent {}
extension Optional: OptGroupContent where Wrapped: OptGroupContent {}
extension Pair: OptGroupContent where First: OptGroupContent, Second: OptGroupContent {}
extension VoidElement: OptGroupContent where Tag: OptGroupTagName {}

extension Tags.option: OptGroupTagName {}
