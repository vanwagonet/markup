import SVG
import Testing

@Suite
struct CircleTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Circle(.cx(1), .cy(2.3), .r("4%"), .pathLength(100)))
        #expect(renderer.string == #"<circle cx="1" cy="2.3" r="4%" pathLength="100" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Circle(.class("cls"), .id("i")))
        #expect(renderer.string == #"<circle class="cls" id="i" />"#)
    }
}
