import HTML
import Testing

@Suite
struct FieldSetTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(FieldSet(
            .disabled,
            .form("f"),
            .name("n")
        ) { "sub" })
        #expect(
            renderer.string ==
            #"<fieldset disabled form="f" name="n">sub</fieldset>"#
        )
    }

    @Test func empty() throws {
        renderer.render(FieldSet())
        #expect(renderer.string == "<fieldset></fieldset>")
    }

    @Test func globalAttributes() throws {
        renderer.render(FieldSet(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<fieldset class="cls one" id="i"></fieldset>"#)
    }
}
