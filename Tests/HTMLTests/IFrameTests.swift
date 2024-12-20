import HTML
import Testing

@Suite
struct IFrameTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(IFrame())
        #expect(renderer.string == "<iframe></iframe>")
    }

    @Test func globalAttributes() throws {
        renderer.render(IFrame(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<iframe class="cls one" id="i"></iframe>"#)
    }
}
