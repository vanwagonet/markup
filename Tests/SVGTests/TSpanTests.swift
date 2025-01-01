import SVG
import Testing

@Suite
struct TSpanTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(TSpan(
            .x(1), .y(2), .dx("5%"), .dy(1.2),
            .rotate(30, 45, 360),
            .textLength(12),
            .lengthAdjust(.spacingAndGlyphs)
        ) { TSpan { "content" } })
        #expect(renderer.string == """
        <tspan
         x="1" y="2" dx="5%" dy="1.2"
         rotate="30 45 360"
         textLength="12"
         lengthAdjust="spacingAndGlyphs"
        ><tspan>content</tspan></tspan>
        """.split(separator: "\n").joined())
    }

    @Test func coreAttributes() throws {
        renderer.render(TSpan(.class("cls"), .id("i")) {})
        #expect(renderer.string == #"<tspan class="cls" id="i" />"#)
    }
}
