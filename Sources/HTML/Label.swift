import Markup

/// `<label>`: The Label element
///
/// The `<label>` HTML element represents a caption for an item in a user interface.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label)
public typealias Label<Content: HTMLContent> = Element<Tags.label, Content>
extension Tags { public enum label: HTMLTagName { public static let name = "label" } }

// TODO: Attributes
