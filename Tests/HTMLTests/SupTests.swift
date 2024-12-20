import HTML
import Testing

@Suite
struct SupTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Sup())
        #expect(renderer.string == "<sup></sup>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Sup(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<sup class="cls one" id="i"></sup>"#)
    }
}
