import HTML
import Testing

@Suite
struct SmallTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Small())
        #expect(renderer.string == "<small></small>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Small(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<small class="cls one" id="i"></small>"#)
    }
}
