/// Empty content, or a lack of content.
public struct Empty: Equatable, Markup {
    public typealias Content = Never

    /// Creates empty content.
    public init() {
        // Nothing to init.
    }

    @inlinable
    public func render(to renderer: any MarkupRenderer) {
        // Nothing to render.
    }
}
