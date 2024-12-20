import HTML
import Testing

@Suite
struct MapTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Map())
        #expect(renderer.string == "<map></map>")
    }

    @Test func encodeValue() throws {
        renderer.render(Map(.name("me")))
        #expect(renderer.string == #"<map name="me"></map>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Map(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<map class="cls one" id="i"></map>"#)
    }
}
