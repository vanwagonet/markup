import HTML
import Testing

@Suite
struct SelectTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Select(
            .autoComplete(.on),
            .autoComplete("postal-code"),
            .disabled,
            .form("f"),
            .multiple,
            .name("s"),
            .required,
            .size(4)
        ))
        #expect(renderer.string == """
        <select
         autocomplete="on"
         autocomplete="postal-code"
         disabled
         form="f"
         multiple
         name="s"
         required
         size="4"
        >
        </select>
        """.split(separator: "\n").joined())
    }

    @Test func content() throws {
        let yes = true
        renderer.render(Select {
            // Div() compile-time error
            if yes {
                Optional(HR())
            } else {
                OptGroup(.label(Text("group")))
                Option { "opt" }
            }
        })
        #expect(renderer.string == #"<select><hr></select>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Select(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<select class="cls one" id="i"></select>"#)
    }
}
