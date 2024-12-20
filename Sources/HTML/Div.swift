import Markup

/// `<div>`: The Content Division element
///
/// The `<div>` HTML element is the generic container for flow content.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div)
public typealias Div<Content: HTMLContent> = Element<Tags.div, Content>
extension Tags { public enum div: HTMLTagName { public static let name = "div" } }
