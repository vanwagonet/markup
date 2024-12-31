import SVG
import Testing

@Suite
struct RectTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Rect(.x(0), .y(1), .width(2), .height(3), .rx(4), .ry(5), .pathLength(100)))
        #expect(renderer.string == #"<rect x="0" y="1" width="2" height="3" rx="4" ry="5" pathLength="100" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Rect(.class("cls"), .id("i")))
        #expect(renderer.string == #"<rect class="cls" id="i" />"#)
    }
}
