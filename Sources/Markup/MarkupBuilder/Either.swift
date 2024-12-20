public enum Either<True: Markup, False: Markup>: Markup {
    public typealias Content = Never

    case first(True)
    case second(False)

    @inlinable
    public func render(to renderer: any MarkupRenderer) {
        switch self {
        case let .first(markup):
            markup.render(to: renderer)
        case let .second(markup):
            markup.render(to: renderer)
        }
    }
}

extension Either: Equatable where True: Equatable, False: Equatable {}
