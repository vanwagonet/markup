import HTML
import Testing

@Suite
struct DLTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(DL())
        #expect(renderer.string == "<dl></dl>")
    }

    @Test func globalAttributes() throws {
        renderer.render(DL(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<dl class="cls one" id="i"></dl>"#)
    }
}
