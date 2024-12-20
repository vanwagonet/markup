import HTML
import Testing

@Suite
struct FigureTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Figure())
        #expect(renderer.string == "<figure></figure>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Figure(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<figure class="cls one" id="i"></figure>"#)
    }
}
