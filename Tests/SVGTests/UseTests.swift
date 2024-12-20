import SVG
import Testing

@Suite
struct UseTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Use(.href("."), .x(1), .y(2), .width(12), .height(34)))
        #expect(renderer.string == #"<use href="." x="1" y="2" width="12" height="34" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Use(.class("cls"), .id("i")))
        #expect(renderer.string == #"<use class="cls" id="i" />"#)
    }
}
