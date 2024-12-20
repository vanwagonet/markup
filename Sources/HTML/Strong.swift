import Markup

/// `<strong>`: The Strong Importance element
///
/// The `<strong>` HTML element indicates that its contents have strong importance, seriousness, or urgency.
/// Browsers typically render the contents in bold type.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong)
public typealias Strong<Content: HTMLContent> = Element<Tags.strong, Content>
extension Tags { public enum strong: HTMLTagName { public static let name = "strong" } }
