import HTML
import Testing

@Suite
struct SlotTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Slot(.name("one")))
        #expect(renderer.string == #"<slot name="one"></slot>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Slot(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<slot class="cls one" id="i"></slot>"#)
    }
}
