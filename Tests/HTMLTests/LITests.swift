import HTML
import Testing

@Suite
struct LITests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(LI())
        #expect(renderer.string == "<li></li>")
    }

    @Test func encodeValue() throws {
        renderer.render(LI(.value(3)))
        #expect(renderer.string == #"<li value="3"></li>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(LI(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<li class="cls one" id="i"></li>"#)
    }
}
