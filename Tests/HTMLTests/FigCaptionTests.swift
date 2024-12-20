import HTML
import Testing

@Suite
struct FigCaptionTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(FigCaption())
        #expect(renderer.string == "<figcaption></figcaption>")
    }

    @Test func globalAttributes() throws {
        renderer.render(FigCaption(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<figcaption class="cls one" id="i"></figcaption>"#)
    }
}
