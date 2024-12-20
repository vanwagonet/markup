import Markup

/// `<dfn>`: The Definition element
///
/// The `<dfn>` HTML element is used to indicate the term being defined within the context of a definition phrase or sentence.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dfn)
public typealias Dfn<Content: HTMLContent> = Element<Tags.dfn, Content>
extension Tags { public enum dfn: HTMLTagName { public static let name = "dfn" } }
