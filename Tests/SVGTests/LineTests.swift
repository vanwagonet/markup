import SVG
import Testing

@Suite
struct LineTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Line(.x1(1), .x2(2.3), .y1("4%"), .y2(1), .pathLength(100)))
        #expect(renderer.string == #"<line x1="1" x2="2.3" y1="4%" y2="1" pathLength="100" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Line(.class("cls"), .id("i")))
        #expect(renderer.string == #"<line class="cls" id="i" />"#)
    }
}
