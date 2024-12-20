import HTML
import Testing

@Suite
struct SampTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Samp())
        #expect(renderer.string == "<samp></samp>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Samp(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<samp class="cls one" id="i"></samp>"#)
    }
}
