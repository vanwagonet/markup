import HTML
import Testing

@Suite
struct BDITests {
    let renderer = StringRenderer()
    
    @Test func empty() throws {
        renderer.render(BDI())
        #expect(renderer.string == "<bdi></bdi>")
    }

    @Test func globalAttributes() throws {
        renderer.render(BDI(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<bdi class="cls one" id="i"></bdi>"#)
    }
}
