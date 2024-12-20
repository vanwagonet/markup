import HTML
import Testing

@Suite
struct PreTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Pre())
        #expect(renderer.string == "<pre></pre>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Pre(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<pre class="cls one" id="i"></pre>"#)
    }
}
