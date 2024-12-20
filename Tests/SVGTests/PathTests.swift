import SVG
import Testing

@Suite
struct PathTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Path(.d("M0 0 h10"), .pathLength(10)))
        #expect(renderer.string == #"<path d="M0 0 h10" pathLength="10" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Path(.class("cls"), .id("i")))
        #expect(renderer.string == #"<path class="cls" id="i" />"#)
    }
}
