import HTML
import Testing

@Suite
struct TitleTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Title { "" })
        #expect(renderer.string == "<title></title>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Title(.class("cls", "one"), .id("i")) { "" })
        #expect(renderer.string == #"<title class="cls one" id="i"></title>"#)
    }
}
