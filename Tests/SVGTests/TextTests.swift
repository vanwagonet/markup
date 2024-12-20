import SVG
import Testing

@Suite
struct TextTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(TextElement(
            .x(1), .y(2), .dx("5%"), .dy(1.2),
            .rotate(30, 45, 360),
            .textLength(12),
            .lengthAdjust(.spacingAndGlyphs)
        ) { "content" })
        #expect(renderer.string == """
        <text
         x="1" y="2" dx="5%" dy="1.2"
         rotate="30 45 360"
         textLength="12"
         lengthAdjust="spacingAndGlyphs"
        >content</text>
        """.split(separator: "\n").joined())
    }

    @Test func coreAttributes() throws {
        renderer.render(TextElement(.class("cls"), .id("i")) {})
        #expect(renderer.string == #"<text class="cls" id="i" />"#)
    }
}
