import Markup

/// `<dialog>`: The Dialog element
///
/// The `<dialog>` HTML element represents a dialog box or other interactive component, such as a dismissible alert, inspector, or subwindow.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dialog)
public typealias Dialog<Content: HTMLContent> = Element<Tags.dialog, Content>
extension Tags { public enum dialog: HTMLTagName { public static let name = "dialog" } }

public extension Attribute<Tags.dialog> {
    /// Indicates that the dialog is active and can be interacted with.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dialog#open)
    @inlinable static var open: Self {
        Self("open")
    }
}
