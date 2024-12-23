import HTML
import Testing

@Suite
struct THTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(TH(.abbr(Text("a")), .colSpan(2), .rowSpan(1), .headers("h", "i"), .scope(.col)))
        #expect(renderer.string == #"<th abbr="a" colspan="2" rowspan="1" headers="h i" scope="col"></th>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(TH(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<th class="cls one" id="i"></th>"#)
    }
}
