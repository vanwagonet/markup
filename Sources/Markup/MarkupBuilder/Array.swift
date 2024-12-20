extension Array: Markup where Element: Markup {
    public typealias Content = Never

    @inlinable
    public func render(to renderer: any MarkupRenderer) {
        for element in self {
            element.render(to: renderer)
        }
    }
}
