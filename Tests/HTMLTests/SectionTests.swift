import HTML
import Testing

@Suite
struct SectionTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Section())
        #expect(renderer.string == "<section></section>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Section(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<section class="cls one" id="i"></section>"#)
    }
}
