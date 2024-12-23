import HTML
import Testing

@Suite
struct TextAreaTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(TextArea(
            .autoComplete(.on),
            .autoComplete("billing", "province"),
            .cols(30), .rows(3),
            .dirName("bd"),
            .disabled,
            .form("f"),
            .minLength(1), .maxLength(100),
            .name("b"),
            .placeholder(Text("Alberta")),
            .readOnly,
            .required,
            .wrap(.hard)
        ) {
            Text(verbatim: "<text>")
        })
        #expect(renderer.string == """
        <textarea
         autocomplete="on"
         autocomplete="billing province"
         cols="30" rows="3"
         dirname="bd"
         disabled
         form="f"
         minlength="1" maxlength="100"
         name="b"
         placeholder="Alberta"
         readonly
         required
         wrap="hard"
        >
        &lt;text&gt;
        </textarea>
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(TextArea(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<textarea class="cls one" id="i"></textarea>"#)
    }
}
