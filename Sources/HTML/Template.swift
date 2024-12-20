import Markup

/// `<template>`: The Content Template element
///
/// The `<template>` HTML element serves as a mechanism for holding HTML fragments, which can either be used later via JavaScript or generated immediately into shadow DOM.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template)
public typealias Template<Content: HTMLContent> = Element<Tags.template, Content>
extension Tags { public enum template: HTMLTagName { public static let name = "template" } }

// TODO: Attributes
