import HTML
import Testing

@Suite
struct SubTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Sub())
        #expect(renderer.string == "<sub></sub>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Sub(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<sub class="cls one" id="i"></sub>"#)
    }
}
