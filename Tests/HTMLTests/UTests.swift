import HTML
import Testing

@Suite
struct UTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(U())
        #expect(renderer.string == "<u></u>")
    }

    @Test func globalAttributes() throws {
        renderer.render(U(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<u class="cls one" id="i"></u>"#)
    }
}
