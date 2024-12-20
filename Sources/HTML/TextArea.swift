import Markup

/// `<textarea>`: The Textarea element
///
/// The `<textarea>` HTML element represents a multi-line plain-text editing control, useful when you want to allow users to enter a sizeable amount of free-form text, for example a comment on a review or feedback form.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea)
public typealias TextArea<Content: HTMLContent> = Element<Tags.textarea, Content>
extension Tags { public enum textarea: HTMLTagName { public static let name = "textarea" } }

// TODO: Attributes
