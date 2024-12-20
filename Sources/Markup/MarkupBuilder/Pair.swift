public struct Pair<First: Markup, Second: Markup>: Markup {
    public typealias Content = Never

    public let first: First
    public let second: Second

    @inlinable
    public func render(to renderer: any MarkupRenderer) {
        first.render(to: renderer)
        second.render(to: renderer)
    }
}

extension Pair: Equatable where First: Equatable, Second: Equatable {}
