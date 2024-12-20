import Markup

/// `<title>`: The Document Title element
///
/// The `<title>` HTML element defines the document's title that is shown in a browser's title bar or a page's tab.
/// It only contains text; tags within the element are ignored.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title)
public typealias Title = Element<Tags.title, Text>
extension Tags { public enum title: MetadataTagName { public static let name = "title" } }
