import HTML
import Testing

@Suite
struct RTTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(RT())
        #expect(renderer.string == "<rt></rt>")
    }

    @Test func globalAttributes() throws {
        renderer.render(RT(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<rt class="cls one" id="i"></rt>"#)
    }
}
