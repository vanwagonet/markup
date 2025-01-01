import Markup

/// `<view>`
///
/// The `<view>` SVG element defines a particular view of an SVG document. A specific view can be displayed by referencing the `<view>` element's id as the target fragment of a URL.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/view)
public typealias View<Content: DescriptiveContent> = Element<Tags.view, Content>
extension Tags { public enum view: SVGTagName { public static let name = "view" } }
