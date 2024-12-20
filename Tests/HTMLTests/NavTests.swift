import HTML
import Testing

@Suite
struct NavTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Nav())
        #expect(renderer.string == "<nav></nav>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Nav(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<nav class="cls one" id="i"></nav>"#)
    }
}
