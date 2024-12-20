import HTML
import Testing

@Suite
struct AddressTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Address())
        #expect(renderer.string == "<address></address>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Address(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<address class="cls one" id="i"></address>"#)
    }
}
