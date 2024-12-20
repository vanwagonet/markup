import HTML
import Testing

@Suite
struct SpanTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Span())
        #expect(renderer.string == "<span></span>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Span(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<span class="cls one" id="i"></span>"#)
    }
}
