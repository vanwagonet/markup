import HTML
import Testing

@Suite
struct ColGroupTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(ColGroup(.span(2)))
        #expect(renderer.string == #"<colgroup span="2"></colgroup>"#)
    }

    @Test func empty() throws {
        renderer.render(ColGroup())
        #expect(renderer.string == "<colgroup></colgroup>")
    }

    @Test func globalAttributes() throws {
        renderer.render(ColGroup(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<colgroup class="cls one" id="i"></colgroup>"#)
    }
}
