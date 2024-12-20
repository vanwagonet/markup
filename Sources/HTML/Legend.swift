import Markup

/// `<legend>`: The Field Set Legend element
///
/// The `<legend>` HTML element represents a caption for the content of its parent `<fieldset>`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/legend)
public typealias Legend<Content: HTMLContent> = Element<Tags.legend, Content>
extension Tags { public enum legend: HTMLTagName { public static let name = "legend" } }
