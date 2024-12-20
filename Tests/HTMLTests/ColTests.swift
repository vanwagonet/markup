import HTML
import Testing

@Suite
struct ColTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Col(.span(2)))
        #expect(renderer.string == #"<col span="2">"#)
    }

    @Test func empty() throws {
        renderer.render(Col())
        #expect(renderer.string == "<col>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Col(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<col class="cls one" id="i">"#)
    }
}
