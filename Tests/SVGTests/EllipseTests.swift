import SVG
import Testing

@Suite
struct EllipseTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Ellipse(.cx(1), .cy(2.3), .rx("4%"), .ry(1), .pathLength(100)))
        #expect(renderer.string == #"<ellipse cx="1" cy="2.3" rx="4%" ry="1" pathLength="100" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Ellipse(.class("cls"), .id("i")))
        #expect(renderer.string == #"<ellipse class="cls" id="i" />"#)
    }
}
