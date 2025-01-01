import Markup

/// `<linearGradient>`
///
/// The `<linearGradient>` SVG element lets authors define linear gradients to apply to other SVG elements.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/linearGradient)
public typealias LinearGradient<Content: GradientContent> = Element<Tags.linearGradient, Content>
extension Tags { public enum linearGradient: SVGTagName { public static let name = "linearGradient" } }

public protocol GradientContent: Markup {}
public protocol GradientContentTagName: TagName {}


// Descriptive Elements
extension Tags.desc: GradientContentTagName {}
extension Tags.metadata: GradientContentTagName {}
extension Tags.title: GradientContentTagName {}

// Specific Elements
// extension Tags.animate: GradientContentTagName {}
// extension Tags.animateTransform: GradientContentTagName {}
extension Tags.script: GradientContentTagName {}
// extension Tags.set: GradientContentTagName {}
extension Tags.stop: GradientContentTagName {}
// extension Tags.style: GradientContentTagName {}

extension Array: GradientContent where Element: GradientContent {}
extension Comment: GradientContent {}
extension Element: GradientContent where Tag: GradientContentTagName {}
extension Either: GradientContent where True: GradientContent, False: GradientContent {}
extension Empty: GradientContent {}
extension Optional: GradientContent where Wrapped: GradientContent {}
extension Pair: GradientContent where First: GradientContent, Second: GradientContent {}
extension VoidElement: GradientContent where Tag: GradientContentTagName {}
