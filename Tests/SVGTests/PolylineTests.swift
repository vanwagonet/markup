import SVG
import Testing

@Suite
struct PolylineTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Polyline(.points((0, 0), (1.2, 2.3)), .pathLength(100)))
        #expect(renderer.string == #"<polyline points="0,0 1.2,2.3" pathLength="100" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Polyline(.class("cls"), .id("i")))
        #expect(renderer.string == #"<polyline class="cls" id="i" />"#)
    }
}
