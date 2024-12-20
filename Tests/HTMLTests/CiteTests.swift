import HTML
import Testing

@Suite
struct CiteTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Cite())
        #expect(renderer.string == "<cite></cite>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Cite(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<cite class="cls one" id="i"></cite>"#)
    }
}
