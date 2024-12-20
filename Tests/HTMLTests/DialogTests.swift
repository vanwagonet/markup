import HTML
import Testing

@Suite
struct DialogTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Dialog(.open))
        #expect(renderer.string == #"<dialog open></dialog>"#)
    }

    @Test func empty() throws {
        renderer.render(Dialog())
        #expect(renderer.string == "<dialog></dialog>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Dialog(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<dialog class="cls one" id="i"></dialog>"#)
    }
}
