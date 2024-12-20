import HTML
import Testing

@Suite
struct QTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Q(.cite("https://quotes.com/1/2/3")) { Text(verbatim: "hi") })
        #expect(renderer.string == #"<q cite="https://quotes.com/1/2/3">hi</q>"#)
    }

    @Test func empty() throws {
        renderer.render(Q())
        #expect(renderer.string == "<q></q>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Q(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<q class="cls one" id="i"></q>"#)
    }
}
