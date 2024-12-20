import HTML
import Testing

@Suite
struct FooterTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Footer())
        #expect(renderer.string == "<footer></footer>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Footer(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<footer class="cls one" id="i"></footer>"#)
    }
}
