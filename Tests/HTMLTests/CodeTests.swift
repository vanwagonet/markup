import HTML
import Testing

@Suite
struct CodeTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Code())
        #expect(renderer.string == "<code></code>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Code(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<code class="cls one" id="i"></code>"#)
    }
}
