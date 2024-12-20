import Markup

/// `<h1>`: The HTML Section Heading element
///
/// The `<h1>` HTML element represent the first level of section heading.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public typealias H1<Content: HTMLContent> = Element<Tags.h1, Content>
extension Tags { public enum h1: HTMLTagName { public static let name = "h1" } }

/// `<h2>`: The HTML Section Heading element
///
/// The `<h2>` HTML element represent the first level of section heading.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public typealias H2<Content: HTMLContent> = Element<Tags.h2, Content>
extension Tags { public enum h2: HTMLTagName { public static let name = "h2" } }

/// `<h3>`: The HTML Section Heading element
///
/// The `<h3>` HTML element represent the first level of section heading.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public typealias H3<Content: HTMLContent> = Element<Tags.h3, Content>
extension Tags { public enum h3: HTMLTagName { public static let name = "h3" } }

/// `<h4>`: The HTML Section Heading element
///
/// The `<h4>` HTML element represent the first level of section heading.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public typealias H4<Content: HTMLContent> = Element<Tags.h4, Content>
extension Tags { public enum h4: HTMLTagName { public static let name = "h4" } }

/// `<h5>`: The HTML Section Heading element
///
/// The `<h5>` HTML element represent the first level of section heading.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public typealias H5<Content: HTMLContent> = Element<Tags.h5, Content>
extension Tags { public enum h5: HTMLTagName { public static let name = "h5" } }

/// `<h6>`: The HTML Section Heading element
///
/// The `<h6>` HTML element represent the sixth level of section heading.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)
public typealias H6<Content: HTMLContent> = Element<Tags.h6, Content>
extension Tags { public enum h6: HTMLTagName { public static let name = "h6" } }
