import HTML
import Testing

@Suite
struct DTTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(DT())
        #expect(renderer.string == "<dt></dt>")
    }

    @Test func globalAttributes() throws {
        renderer.render(DT(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<dt class="cls one" id="i"></dt>"#)
    }
}
