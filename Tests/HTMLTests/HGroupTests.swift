import HTML
import Testing

@Suite
struct HGroupTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(HGroup())
        #expect(renderer.string == "<hgroup></hgroup>")
    }

    @Test func globalAttributes() throws {
        renderer.render(HGroup(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<hgroup class="cls one" id="i"></hgroup>"#)
    }
}
