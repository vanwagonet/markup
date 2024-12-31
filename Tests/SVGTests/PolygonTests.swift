import SVG
import Testing

@Suite
struct PolygonTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Polygon(.points((0, 0), (1.2, 2.3)), .pathLength(100)))
        #expect(renderer.string == #"<polygon points="0,0 1.2,2.3" pathLength="100" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Polygon(.class("cls"), .id("i")))
        #expect(renderer.string == #"<polygon class="cls" id="i" />"#)
    }
}
