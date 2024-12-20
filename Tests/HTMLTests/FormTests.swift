import HTML
import Testing

@Suite
struct FormTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Form(
            .acceptCharset(.utf8),
            .action("/"),
            .autoComplete(.streetAddress),
            .encType(.textPlain),
            .method(.post),
            .name("n"),
            .noValidate,
            .rel(.external),
            .target(._self)
        ) { "sub" })
        #expect(renderer.string == """
        <form
         accept-charset="utf-8"
         action="/"
         autocomplete="street-address"
         enctype="text/plain"
         method="post"
         name="n"
         novalidate
         rel="external"
         target="_self"
        >sub</form>
        """.split(separator: "\n").joined())
    }

    @Test func empty() throws {
        renderer.render(Form())
        #expect(renderer.string == "<form></form>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Form(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<form class="cls one" id="i"></form>"#)
    }
}
