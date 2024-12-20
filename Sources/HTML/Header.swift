import Markup

/// `<header>`: The Header element
///
/// The `<header>` HTML element represents introductory content, typically a group of introductory or navigational aids.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header)
public typealias Header<Content: HTMLContent> = Element<Tags.header, Content>
extension Tags { public enum header: HTMLTagName { public static let name = "header" } }
