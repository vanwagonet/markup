import HTML
import Testing

@Suite
struct ScriptTests {
    let renderer = StringRenderer()

    @Test func classic() throws {
        renderer.render(Script(.src("."), .defer, .noModule, .type("text/javascript")))
        #expect(renderer.string == #"<script src="." defer nomodule type="text/javascript"></script>"#)
    }

    @Test func empty() throws {
        renderer.render(Script())
        #expect(renderer.string == "<script></script>")
    }

    @Test func inline() throws {
        renderer.render(Script("<!-- <!- <scrip <script </script"))
        #expect(renderer.string == #"<script>\x3C!-- <!- <scrip \x3Cscript \x3C/script</script>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Script(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<script class="cls one" id="i"></script>"#)
    }

    @Test func policyAttributes() throws {
        renderer.render(Script(
            .src("#"),
            .async,
            .crossOrigin(.anonymous),
            .fetchPriority(.low),
            .integrity("no"),
            .nonce("a"),
            .referrerPolicy(.origin),
            .type(.module)
        ))
        #expect(renderer.string == """
        <script
         src="#"
         async
         crossorigin="anonymous"
         fetchpriority="low"
         integrity="no"
         nonce="a"
         referrerpolicy="origin"
         type="module"
        ></script>
        """.split(separator: "\n").joined())
    }
}
