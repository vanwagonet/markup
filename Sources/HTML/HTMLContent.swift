import Markup

/// This is a marker for any `Markup` that can appear in an html document.
public protocol HTMLContent: Markup {}

extension Array: HTMLContent where Element: HTMLContent {}
extension Comment: HTMLContent {}
extension Element: HTMLContent where Tag: HTMLTagName {}
extension Either: HTMLContent where True: HTMLContent, False: HTMLContent {}
extension Empty: HTMLContent {}
extension Optional: HTMLContent where Wrapped: HTMLContent {}
extension Pair: HTMLContent where First: HTMLContent, Second: HTMLContent {}
extension Text: HTMLContent {}
extension VoidElement: HTMLContent where Tag: HTMLTagName {}

