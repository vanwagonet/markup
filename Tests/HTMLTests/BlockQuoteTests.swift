import HTML
import Testing

@Suite
struct BlockQuoteTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(BlockQuote(.cite("https://quotes.com/1/2/3")) { Text(verbatim: "hi") })
        #expect(renderer.string == #"<blockquote cite="https://quotes.com/1/2/3">hi</blockquote>"#)
    }

    @Test func empty() throws {
        renderer.render(BlockQuote())
        #expect(renderer.string == "<blockquote></blockquote>")
    }

    @Test func globalAttributes() throws {
        renderer.render(BlockQuote(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<blockquote class="cls one" id="i"></blockquote>"#)
    }
}
