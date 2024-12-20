import HTML
import Testing

@Suite
struct SearchTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Search())
        #expect(renderer.string == "<search></search>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Search(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<search class="cls one" id="i"></search>"#)
    }
}
