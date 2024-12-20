import HTML
import Testing

@Suite
struct StrongTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Strong())
        #expect(renderer.string == "<strong></strong>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Strong(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<strong class="cls one" id="i"></strong>"#)
    }
}
