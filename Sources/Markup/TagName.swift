/// A marker protocol for declaring elements along with their tag name.
public protocol TagName {
    static var name: String { get }
}

public extension TagName {
    @inlinable
    static func renderStart(to renderer: any MarkupRenderer, attributes: [Attribute<Self>], selfClose: Bool) {
        renderer.renderUTF8CodeUnit(60) // <
        renderer.render(name)
        attributes.render(to: renderer)
        if selfClose {
            renderer.renderUTF8CodeUnit(32) // " "
            renderer.renderUTF8CodeUnit(47) // /
        }
        renderer.renderUTF8CodeUnit(62) // >
    }

    @inlinable
    static func renderEnd(to renderer: any MarkupRenderer) {
        renderer.renderUTF8CodeUnit(60) // <
        renderer.renderUTF8CodeUnit(47) // /
        renderer.render(name)
        renderer.renderUTF8CodeUnit(62) // >
    }
}
