import HTML
import Testing

@Suite
struct BrTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Br())
        #expect(renderer.string == "<br>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Br(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<br class="cls one" id="i">"#)
    }

    @Test func withSelfClose() throws {
        renderer.context.isXML = true
        renderer.render(Br())
        #expect(renderer.string == "<br />")
    }
}
