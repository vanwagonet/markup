import Markup

/// `<output>`: The Output element
///
/// The `<output>` HTML element is a container element into which a site or app can inject the results of a calculation or the outcome of a user action.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/output)
public typealias Output<Content: HTMLContent> = Element<Tags.output, Content>
extension Tags { public enum output: HTMLTagName { public static let name = "output" } }

// TODO: Attributes
