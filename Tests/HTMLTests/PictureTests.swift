import HTML
import Testing

@Suite
struct PictureTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Picture())
        #expect(renderer.string == "<picture></picture>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Picture(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<picture class="cls one" id="i"></picture>"#)
    }
}
