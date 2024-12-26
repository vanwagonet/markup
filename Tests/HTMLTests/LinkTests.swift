import HTML
import Testing

@Suite
struct LinkTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Link(
            .href("/style.css"),
            .rel(.stylesheet),
            .type("text/css")
        ))
        #expect(
            renderer.string ==
            #"<link href="/style.css" rel="stylesheet" type="text/css">"#
        )
    }

    @Test func globalAttributes() throws {
        renderer.render(Link(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<link class="cls one" id="i">"#)
    }

    @Test func policyAttributes() throws {
        renderer.render(Link(
            .hrefLang("en"),
            .crossOrigin(.anonymous),
            .integrity("aGFzaA=="),
            .media("print"),
            .referrerPolicy(.origin)
        ))
        #expect(renderer.string == """
        <link
         hreflang="en"
         crossorigin="anonymous"
         integrity="aGFzaA=="
         media="print"
         referrerpolicy="origin"
        >
        """.split(separator: "\n").joined())
    }

    @Test func imageResponsiveAttributes() throws {
        renderer.render(Link(
            .as(.image),
            .rel(.preload),
            .imageSizes("(max-width: 400px) 400px", "800px"),
            .imageSrcSet(.width(("/400.png", 400), ("/800.png", 800))),
            .imageSrcSet(.density("/1.png", ("/2.5.png", 2.5), ("/3.png", 3)))
        ))
        #expect(renderer.string == """
        <link
         as="image"
         rel="preload"
         imagesizes="(max-width: 400px) 400px, 800px"
         imagesrcset="/400.png 400w, /800.png 800w"
         imagesrcset="/1.png, /2.5.png 2.5x, /3.png 3x"
        >
        """.split(separator: "\n").joined())
    }
}
