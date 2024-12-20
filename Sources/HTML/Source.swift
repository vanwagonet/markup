import Markup

/// `<source>`: The Media or Image Source element
///
/// The `<source>` HTML element specifies one or more media resources for the `<picture>`, `<audio>`, and `<video>` elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/source)
public typealias Source = VoidElement<Tags.source>
extension Tags { public enum source: HTMLTagName { public static let name = "source" } }

// TODO: Attributes
