import SVG
import Testing

@Suite
struct MetadataTests {
    let renderer = StringRenderer()

    @Test func coreAttributes() throws {
        renderer.render(Metadata(.class("cls"), .id("i")) { "any" })
        #expect(renderer.string == #"<metadata class="cls" id="i">any</metadata>"#)
    }
}
