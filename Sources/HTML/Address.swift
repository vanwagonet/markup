import Markup

/// `<address>`: The Contact Address element
///
/// The `<address>` HTML element indicates that the enclosed HTML provides contact information for a person or people, or for an organization.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/address)
public typealias Address<Content: HTMLContent> = Element<Tags.address, Content>
extension Tags { public enum address: HTMLTagName { public static let name = "address" } }
