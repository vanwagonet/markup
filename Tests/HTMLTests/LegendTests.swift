import HTML
import Testing

@Suite
struct LegendTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Legend())
        #expect(renderer.string == "<legend></legend>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Legend(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<legend class="cls one" id="i"></legend>"#)
    }
}
