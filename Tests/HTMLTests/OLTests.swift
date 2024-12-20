import HTML
import Testing

@Suite
struct OLTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(OL())
        #expect(renderer.string == "<ol></ol>")
    }

    @Test func globalAttributes() throws {
        renderer.render(OL(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<ol class="cls one" id="i"></ol>"#)
    }

    @Test func ordinalAttributes() throws {
        renderer.render(OL(.reversed, .start(100), .type("1")))
        #expect(renderer.string == #"<ol reversed start="100" type="1"></ol>"#)
    }
}
