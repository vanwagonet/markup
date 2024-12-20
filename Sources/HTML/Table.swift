import Markup

/// `<table>`: The Table element
///
/// The `<table>` HTML element represents tabular data—that is, information presented in a two-dimensional table comprised of rows and columns of cells containing data.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table)
public typealias Table<Content: HTMLContent> = Element<Tags.table, Content>
extension Tags { public enum table: HTMLTagName { public static let name = "table" } }

// TODO: Attributes
// TODO: Content Restrictions
