/// Commentary content.
public struct Comment: Equatable, Markup {
    public typealias Content = Never

    public let string: String

    /// Creates commentary content.
    ///
    /// - Parameters:
    ///   - comment: A string to display inside the comment.
    public init(_ comment: String) {
        self.string = comment
    }

    public func render(to renderer: any MarkupRenderer) {
        renderer.renderStaticString("<!--")
        let utf8 = string.utf8
        var start = utf8.startIndex
        for current in utf8.indices {
            switch utf8[current] {
            case 38: // &
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&amp;")
                start = utf8.index(after: current)
            case 45: // -
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&#45;")
                start = utf8.index(after: current)
            default:
                ()
            }
        }
        if start < utf8.endIndex {
            renderer.renderUTF8CodeUnits(utf8[start ..< utf8.endIndex])
        }
        renderer.renderStaticString("-->")
    }
}
