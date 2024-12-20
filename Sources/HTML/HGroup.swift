import Markup

/// `<hgroup>`: The Header Group element
///
/// The `<hgroup>` HTML element represents a heading and related content.
/// It groups a single `<h1>`–`<h6>` element with one or more `<p>`.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/hgroup)
public typealias HGroup<Content: HTMLContent> = Element<Tags.hgroup, Content>
extension Tags { public enum hgroup: HTMLTagName { public static let name = "hgroup" } }
