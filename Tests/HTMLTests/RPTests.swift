import HTML
import Testing

@Suite
struct RPTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(RP())
        #expect(renderer.string == "<rp></rp>")
    }

    @Test func globalAttributes() throws {
        renderer.render(RP(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<rp class="cls one" id="i"></rp>"#)
    }
}
