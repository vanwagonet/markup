import Markup

/// `<body>`: The Document Body element
///
/// The `<body>` HTML element represents the content of an HTML document. There can be only one `<body>` element in a document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/body)
public typealias Body<Content: HTMLContent> = Element<Tags.body, Content>
extension Tags { public enum body: HTMLTagName { public static let name = "body" } }
