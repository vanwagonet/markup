/// Character data.
public struct CData: Equatable, Markup {
    public typealias Content = Never

    public let string: String

    /// Creates XML character data.
    ///
    /// - Parameters:
    ///   - comment: A string to encode into character data.
    public init(_ data: String) {
        self.string = data
    }

    public func render(to renderer: any MarkupRenderer) {
        renderer.renderStaticString("<![CDATA[")
        let end = "]]>".utf8

        let utf8 = string.utf8
        var start = utf8.startIndex
        for current in utf8.indices {
            switch utf8[current] {
            case 93 /* ] */ where (
                (utf8.index(current, offsetBy: 3) <= utf8.endIndex &&
                 utf8[current ..< utf8.index(current, offsetBy: 3)].elementsEqual(end)
                )
            ):
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("]]]]><![CDATA[>")
                start = utf8.index(current, offsetBy: 3)
            default:
                ()
            }
        }
        if start < utf8.endIndex {
            renderer.renderUTF8CodeUnits(utf8[start ..< utf8.endIndex])
        }
        renderer.renderStaticString("]]>")
    }
}
