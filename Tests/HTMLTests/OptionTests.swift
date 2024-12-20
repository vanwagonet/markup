import HTML
import Testing

@Suite
struct OptionTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Option())
        #expect(renderer.string == #"<option></option>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Option(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<option class="cls one" id="i"></option>"#)
    }

    @Test func optionalAttributes() throws {
        renderer.render(Option(.label(Text("lbl")), .value("1"), .disabled, .selected) {
            Text("content")
        })
        #expect(renderer.string == """
        <option
         label="lbl"
         value="1"
         disabled
         selected
        >content</option>
        """.split(separator: "\n").joined())
    }
}
