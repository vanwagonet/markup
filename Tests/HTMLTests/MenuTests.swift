import HTML
import Testing

@Suite
struct MenuTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Menu())
        #expect(renderer.string == "<menu></menu>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Menu(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<menu class="cls one" id="i"></menu>"#)
    }
}
