import Markup

/// This is a marker for any `Markup` that can appear in an svg document.
public protocol SVGContent: Markup {}

extension Array: SVGContent where Element: SVGContent {}
extension Comment: SVGContent {}
extension Element: SVGContent where Tag: SVGTagName {}
extension Either: SVGContent where True: SVGContent, False: SVGContent {}
extension Empty: SVGContent {}
extension Optional: SVGContent where Wrapped: SVGContent {}
extension Pair: SVGContent where First: SVGContent, Second: SVGContent {}
extension VoidElement: SVGContent where Tag: SVGTagName {}
