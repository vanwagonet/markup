import HTML
import Testing

@Suite
struct MarkTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Mark())
        #expect(renderer.string == "<mark></mark>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Mark(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<mark class="cls one" id="i"></mark>"#)
    }
}
