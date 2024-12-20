import HTML
import Testing

@Suite
struct NoScriptTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(NoScript())
        #expect(renderer.string == "<noscript></noscript>")
    }

    @Test func globalAttributes() throws {
        renderer.render(NoScript(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<noscript class="cls one" id="i"></noscript>"#)
    }
}
