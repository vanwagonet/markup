import HTML
import Testing

@Suite
struct OutputTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Output(.for("i"), .form("f"), .name("o")))
        #expect(renderer.string == #"<output for="i" form="f" name="o"></output>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Output(.class("cls", "one"), .id("i")) { "" })
        #expect(renderer.string == #"<output class="cls one" id="i"></output>"#)
    }
}
