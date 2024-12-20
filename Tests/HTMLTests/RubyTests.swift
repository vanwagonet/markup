import HTML
import Testing

@Suite
struct RubyTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Ruby())
        #expect(renderer.string == "<ruby></ruby>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Ruby(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<ruby class="cls one" id="i"></ruby>"#)
    }
}
