import HTML
import Testing

@Suite
struct DDTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(DD())
        #expect(renderer.string == "<dd></dd>")
    }

    @Test func globalAttributes() throws {
        renderer.render(DD(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<dd class="cls one" id="i"></dd>"#)
    }
}
