@testable import Markup
import Testing

@Suite
struct CommentTests {
    @Test func render() throws {
        let renderer = StringRenderer()
        renderer.render(Comment("test ----- <&>"))
        #expect(renderer.string == "<!--test &#45;&#45;&#45;&#45;&#45; <&amp;>-->")
    }
}
