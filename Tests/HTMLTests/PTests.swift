import HTML
import Testing

@Suite
struct PTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(P())
        #expect(renderer.string == "<p></p>")
    }

    @Test func globalAttributes() throws {
        renderer.render(P(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<p class="cls one" id="i"></p>"#)
    }
}
