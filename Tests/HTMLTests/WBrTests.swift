import HTML
import Testing

@Suite
struct WBrTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(WBr())
        #expect(renderer.string == "<wbr>")
    }

    @Test func globalAttributes() throws {
        renderer.render(WBr(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<wbr class="cls one" id="i">"#)
    }
}
