import HTML
import Testing

@Suite
struct DataListTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(DataList())
        #expect(renderer.string == "<datalist></datalist>")
    }

    @Test func globalAttributes() throws {
        renderer.render(DataList(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<datalist class="cls one" id="i"></datalist>"#)
    }
}
