import HTML
import Testing

@Suite
struct TDTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(TD(.colSpan(2), .rowSpan(1), .headers("h", "i")))
        #expect(renderer.string == #"<td colspan="2" rowspan="1" headers="h i"></td>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(TD(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<td class="cls one" id="i"></td>"#)
    }
}
