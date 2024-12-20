import HTML
import Testing

@Suite
struct AsideTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Aside())
        #expect(renderer.string == "<aside></aside>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Aside(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<aside class="cls one" id="i"></aside>"#)
    }
}
