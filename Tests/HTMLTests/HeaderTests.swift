import HTML
import Testing

@Suite
struct HeaderTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Header())
        #expect(renderer.string == "<header></header>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Header(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<header class="cls one" id="i"></header>"#)
    }
}
