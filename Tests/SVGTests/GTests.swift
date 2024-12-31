import SVG
import Testing

@Suite
struct GTests {
    let renderer = StringRenderer()

    @Test func coreAttributes() throws {
        renderer.render(G(.class("cls"), .id("i")))
        #expect(renderer.string == #"<g class="cls" id="i" />"#)
    }
}
