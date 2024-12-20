import HTML
import Testing

@Suite
struct AbbrTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Abbr())
        #expect(renderer.string == "<abbr></abbr>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Abbr(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<abbr class="cls one" id="i"></abbr>"#)
    }
}
