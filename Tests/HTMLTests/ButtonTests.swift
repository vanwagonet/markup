import HTML
import Testing

@Suite
struct ButtonTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Button(
            .autoFocus,
            .disabled,
            .name("n"),
            .type(.submit),
            .value("v")
        ) { "sub" })
        #expect(
            renderer.string ==
            #"<button autofocus disabled name="n" type="submit" value="v">sub</button>"#
        )
    }

    @Test func empty() throws {
        renderer.render(Button())
        #expect(renderer.string == "<button></button>")
    }

    @Test func formAttributes() throws {
        renderer.render(Button(
            .form("f"),
            .formAction("/"),
            .formEncType(.textPlain),
            .formMethod(.post),
            .formNoValidate,
            .formTarget(._blank)
        ))
        #expect(renderer.string == """
        <button
         form="f"
         formaction="/"
         formenctype="text/plain"
         formmethod="post"
         formnovalidate
         formtarget="_blank"
        ></button>
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(Button(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<button class="cls one" id="i"></button>"#)
    }

    @Test func popoverAttributes() throws {
        renderer.render(Button(
            .popoverTarget("pop"),
            .popoverTargetAction(.toggle)
        ))
        #expect(
            renderer.string ==
            #"<button popovertarget="pop" popovertargetaction="toggle"></button>"#
        )
    }
}
