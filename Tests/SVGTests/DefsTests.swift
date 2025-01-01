import SVG
import Testing

@Suite
struct DefsTests {
    let renderer = StringRenderer()

    @Test func coreAttributes() throws {
        renderer.render(Defs(.class("cls"), .id("i")))
        #expect(renderer.string == #"<defs class="cls" id="i" />"#)
    }
}
