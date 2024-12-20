import HTML
import Testing

@Suite
struct EmTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Em())
        #expect(renderer.string == "<em></em>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Em(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<em class="cls one" id="i"></em>"#)
    }
}
