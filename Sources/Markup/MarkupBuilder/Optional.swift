extension Optional: Markup where Wrapped: Markup {
    public typealias Content = Never

    @inlinable
    public func render(to renderer: any MarkupRenderer) {
        if let markup = self {
            markup.render(to: renderer)
        }
    }
}
