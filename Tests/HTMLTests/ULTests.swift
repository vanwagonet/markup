import HTML
import Testing

@Suite
struct ULTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(UL())
        #expect(renderer.string == "<ul></ul>")
    }

    @Test func globalAttributes() throws {
        renderer.render(UL(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<ul class="cls one" id="i"></ul>"#)
    }
}
