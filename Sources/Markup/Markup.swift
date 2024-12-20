/// Custom `Markup` structs compose other markup content.
public protocol Markup {
    associatedtype Content: Markup

    @MarkupBuilder var markup: Content { get }

    func render(to renderer: any MarkupRenderer)
}

extension Never: Markup {
    public typealias Content = Never
}

public extension Markup where Content == Never {
    var markup: Never { fatalError("Cannot get composite markup of Never") }
    func render(to renderer: any MarkupRenderer) {}
}

public extension Markup {
    @inlinable
    func render(to renderer: any MarkupRenderer) {
        renderer.render(markup)
    }
}

public extension MarkupRenderer {
    @inlinable
    func render<M: Markup>(_ markup: M) {
        markup.render(to: self)
    }
}
