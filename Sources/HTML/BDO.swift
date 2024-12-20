import Markup

/// `<bdo>`: The Bidirectional Text Override element
///
/// The `<bdo>` HTML element overrides the current directionality of text, so that the text within is rendered in a different direction.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdo)
public typealias BDO<Content: HTMLContent> = Element<Tags.bdo, Content>
extension Tags { public enum bdo: HTMLTagName { public static let name = "bdo" } }
