import HTML
import Testing

@Suite
struct VarTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Var())
        #expect(renderer.string == "<var></var>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Var(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<var class="cls one" id="i"></var>"#)
    }
}
