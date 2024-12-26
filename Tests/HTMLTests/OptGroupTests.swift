import HTML
import Testing

@Suite
struct OptGroupTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(OptGroup(.label(Text("")), .disabled))
        #expect(renderer.string == #"<optgroup label="" disabled></optgroup>"#)
    }

    @Test func content() throws {
        renderer.render(OptGroup(.label(Text(verbatim: "hi"))) {
            // Div() Compile-time error
            Option { "opt" }
        })
        #expect(renderer.string == #"<optgroup label="hi"><option>opt</option></optgroup>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(OptGroup(.label(Text("")), .class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<optgroup label="" class="cls one" id="i"></optgroup>"#)
    }
}
