import HTML
import Testing

@Suite
struct BTests {
    @Test func empty() throws {
        let renderer = StringRenderer()
        renderer.render(B())
        #expect(renderer.string == "<b></b>")
    }
}
