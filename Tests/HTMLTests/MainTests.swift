import HTML
import Testing

@Suite
struct MainTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Main())
        #expect(renderer.string == "<main></main>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Main(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<main class="cls one" id="i"></main>"#)
    }
}
