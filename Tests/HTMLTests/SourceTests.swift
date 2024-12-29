import HTML
import Testing

@Suite
struct SourceTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Source(
            .height(100), .width(200),
            .media("only screen"),
            .sizes("(max-width: 400px) 400px", "800px"),
            .srcSet(.width(("/400.png", 400), ("/800.png", 800))),
            .src("."),
            .type("image/png")
        ))
        #expect(renderer.string == """
        <source
         height="100" width="200"
         media="only screen"
         sizes="(max-width: 400px) 400px, 800px"
         srcset="/400.png 400w, /800.png 800w"
         src="."
         type="image/png"
        >
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(Source(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<source class="cls one" id="i">"#)
    }
}
