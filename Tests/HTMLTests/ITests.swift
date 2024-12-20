import HTML
import Testing

@Suite
struct ITests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(I())
        #expect(renderer.string == "<i></i>")
    }

    @Test func globalAttributes() throws {
        renderer.render(I(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<i class="cls one" id="i"></i>"#)
    }
}
