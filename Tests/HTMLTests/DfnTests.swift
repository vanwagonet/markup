import HTML
import Testing

@Suite
struct DfnTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Dfn())
        #expect(renderer.string == "<dfn></dfn>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Dfn(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<dfn class="cls one" id="i"></dfn>"#)
    }
}
