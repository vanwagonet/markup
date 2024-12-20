import HTML
import Testing

@Suite
struct CaptionTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Caption())
        #expect(renderer.string == "<caption></caption>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Caption(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<caption class="cls one" id="i"></caption>"#)
    }
}
