import Markup

/// `<main>`: The Main element
///
/// The `<main>` HTML element represents the dominant content of the `<body>` of a document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main)
public typealias Main<Content: HTMLContent> = Element<Tags.main, Content>
extension Tags { public enum main: HTMLTagName { public static let name = "main" } }
