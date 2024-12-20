import Markup

/// `<datalist>`: The HTML Data List element
///
/// The `<datalist>` HTML element contains a set of `<option>` elements that represent the permissible or recommended options available to choose from within other controls.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/datalist)
public typealias DataList<Content: HTMLContent> = Element<Tags.datalist, Content>
extension Tags { public enum datalist: HTMLTagName { public static let name = "datalist" } }
