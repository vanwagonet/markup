import SVG
import Testing

@Suite
struct ATests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(A(
            .href("/other"),
            .target(._blank),
            .rel(.external, .noReferrer)
        ))
        #expect(
            renderer.string ==
            #"<a href="/other" target="_blank" rel="external noreferrer" />"#
        )
    }

    @Test func coreAttributes() throws {
        renderer.render(A(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<a class="cls one" id="i" />"#)
    }

    @Test func extraAttributes() throws {
        renderer.render(A(
            .href("/"),
            .hrefLang("en-GB"),
            .download,
            .download(Text(verbatim: "filename")),
            .ping("analytics", "mothership"),
            .referrerPolicy(.sameOrigin),
            .target("frame"),
            .type("text/html")
        ))
        #expect(renderer.string == """
        <a
         href="/"
         hreflang="en-GB"
         download
         download="filename"
         ping="analytics mothership"
         referrerpolicy="same-origin"
         target="frame"
         type="text/html"
         />
        """.split(separator: "\n").joined())
    }
}
