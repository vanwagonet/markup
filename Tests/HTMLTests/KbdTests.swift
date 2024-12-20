import HTML
import Testing

@Suite
struct KbdTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Kbd())
        #expect(renderer.string == "<kbd></kbd>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Kbd(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<kbd class="cls one" id="i"></kbd>"#)
    }
}
