import HTML
import Testing

@Suite
struct STests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(S())
        #expect(renderer.string == "<s></s>")
    }

    @Test func globalAttributes() throws {
        renderer.render(S(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<s class="cls one" id="i"></s>"#)
    }
}
