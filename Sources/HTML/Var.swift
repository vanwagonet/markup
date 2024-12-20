import Markup

/// `<var>`: The Variable element
///
/// The `<var>` HTML element represents the name of a variable in a mathematical expression or a programming context.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/var)
public typealias Var<Content: HTMLContent> = Element<Tags.`var`, Content>
extension Tags { public enum `var`: HTMLTagName { public static let name = "var" } }
