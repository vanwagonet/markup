import Markup

/// `<template>`: The Content Template element
///
/// The `<template>` HTML element serves as a mechanism for holding HTML fragments, which can either be used later via JavaScript or generated immediately into shadow DOM.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template)
public typealias Template<Content: HTMLContent> = Element<Tags.template, Content>
extension Tags { public enum template: HTMLTagName { public static let name = "template" } }

public extension Attribute<Tags.template> {
    /// Creates a shadow root for the parent element. It is a declarative version of the `Element.attachShadow()` method.
    ///
    /// - Parameters:
    ///   - mode: The shadow root mode.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template#shadowrootmode)
    @inlinable static func shadowRootMode(_ mode: ShadowRootMode) -> Self {
        Self("shadowrootmode", value: Text(verbatim: mode.rawValue))
    }

    /// Sets the value of the clonable property of a ShadowRoot created using this element to true. If set, a clone of the shadow host (the parent element of this `<template>`) created with `Node.cloneNode()` or `Document.importNode()` will include a shadow root in the copy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template#shadowrootclonable)
    @inlinable static var shadowRootClonable: Self {
        Self("shadowrootclonable")
    }

    /// Sets the value of the `delegatesFocus` property of a ShadowRoot created using this element to true. If this is set and a non-focusable element in the shadow tree is selected, then focus is delegated to the first focusable element in the tree..
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template#shadowrootdelegatesfocus)
    @inlinable static var shadowRootDelegatesFocus: Self {
        Self("shadowrootdelegatesfocus")
    }

    /// Sets the value of the serializable property of a ShadowRoot created using this element to true. If set, the shadow root may be serialized by calling the `Element.getHTML()` or `ShadowRoot.getHTML()` methods with the `options.serializableShadowRoots` parameter set `true`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template#shadowrootserializable)
    @inlinable static var shadowRootSerializable: Self {
        Self("shadowrootserializable")
    }
}

/// Creates a shadow root for the parent element. It is a declarative version of the `Element.attachShadow()` method.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template#shadowrootmode)
public enum ShadowRootMode: String {
    /// Hides the internal shadow root DOM from JavaScript.
    case closed
    /// Exposes the internal shadow root DOM for JavaScript (recommended for most use cases).
    case open
}
