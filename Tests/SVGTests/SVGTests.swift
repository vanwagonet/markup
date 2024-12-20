import SVG
import Testing

@Suite
struct SVGTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(SVG(
            .x(0), .y(0), .width(3.4), .height(5),
            .viewBox(minX: -1, minY: 2.1, width: 3.4, height: 5),
            .preserveAspectRatio(align: .xMinYMin),
            .preserveAspectRatio(align: .xMaxYMid, mode: .slice)
        ) {})
        #expect(renderer.string == """
        <svg
         x="0"
         y="0"
         width="3.4"
         height="5"
         viewBox="-1 2.1 3.4 5"
         preserveAspectRatio="xMinYMin"
         preserveAspectRatio="xMaxYMid slice"
        ></svg>
        """.split(separator: "\n").joined())
    }

    @Test func coreAttributes() throws {
        renderer.render(SVG(.class("cls"), .id("i")) {})
        #expect(renderer.string == #"<svg class="cls" id="i"></svg>"#)
    }

    @Test func equals() throws {
        #expect(SVG(.id("i")) { Path() } == SVG(.id("i")) { Path() })
    }

    @Test func namespace() throws {
        renderer.render(SVG(.xmlns(.svg)) {})
        #expect(renderer.string == #"<svg xmlns="http://www.w3.org/2000/svg"></svg>"#)
    }
}
