import Markup

/// `<progress>`: The Progress Indicator element
///
/// The `<progress>` HTML element displays an indicator showing the completion progress of a task, typically displayed as a progress bar.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress)
public typealias Progress<Content: HTMLContent> = Element<Tags.progress, Content>
extension Tags { public enum progress: HTMLTagName { public static let name = "progress" } }

// TODO: Attributes
