import SVG
import Testing

@Suite
struct DescTests {
    let renderer = StringRenderer()

    @Test func coreAttributes() throws {
        renderer.render(Desc(.class("cls"), .id("i")) { "ription" })
        #expect(renderer.string == #"<desc class="cls" id="i">ription</desc>"#)
    }
}
