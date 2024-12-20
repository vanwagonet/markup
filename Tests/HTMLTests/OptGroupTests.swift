import HTML
import Testing

@Suite
struct OptGroupTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(OptGroup(label: Text(verbatim: "hi")))
        #expect(renderer.string == #"<optgroup label="hi"></optgroup>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(OptGroup(label: Text(""), .class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<optgroup label="" class="cls one" id="i"></optgroup>"#)
    }

    @Test func optionalAttributes() throws {
        renderer.render(OptGroup(label: Text(""), .disabled))
        #expect(renderer.string == #"<optgroup label="" disabled></optgroup>"#)
    }
}
