import HTML
import Testing

@Suite
struct BDOTests {
    let renderer = StringRenderer()
    
    @Test func empty() throws {
        renderer.render(BDO())
        #expect(renderer.string == "<bdo></bdo>")
    }

    @Test func globalAttributes() throws {
        renderer.render(BDO(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<bdo class="cls one" id="i"></bdo>"#)
    }
}
