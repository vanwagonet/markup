import Markup

/// `<use>`
///
/// The `<use>` element takes nodes from within the SVG document, and duplicates them somewhere else. The effect is the same as if the nodes were deeply cloned into a non-exposed DOM, then pasted where the use element is, much like cloned template elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use)
public typealias Use<Content: AnimationOrDescriptiveContent> = Element<Tags.use, Content>
extension Tags { public enum use: SVGTagName { public static let name = "use" } }
