import SVG
import Testing

@Suite
struct TitleTests {
    let renderer = StringRenderer()

    @Test func coreAttributes() throws {
        renderer.render(Title(.class("cls"), .id("i")) { "tytul" })
        #expect(renderer.string == #"<title class="cls" id="i">tytul</title>"#)
    }
}
