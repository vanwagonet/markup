import HTML
import Testing

@Suite
struct DataTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Data(.value(Text(verbatim: "v"))) { "hello" })
        #expect(renderer.string == #"<data value="v">hello</data>"#)
    }

    @Test func empty() throws {
        renderer.render(Data())
        #expect(renderer.string == "<data></data>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Data(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<data class="cls one" id="i"></data>"#)
    }
}
