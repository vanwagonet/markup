import HTML
import Testing

@Suite
struct DivTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Div())
        #expect(renderer.string == "<div></div>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Div(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<div class="cls one" id="i"></div>"#)
    }
}
