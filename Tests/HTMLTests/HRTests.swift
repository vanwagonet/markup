import HTML
import Testing

@Suite
struct HRTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(HR())
        #expect(renderer.string == "<hr>")
    }

    @Test func globalAttributes() throws {
        renderer.render(HR(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<hr class="cls one" id="i">"#)
    }
}
