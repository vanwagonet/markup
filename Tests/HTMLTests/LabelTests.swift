import HTML
import Testing

@Suite
struct LabelTests {
    let renderer = StringRenderer()

    @Test func basic() throws {
        renderer.render(Label(.for("name")))
        #expect(renderer.string == #"<label for="name"></label>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Label(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<label class="cls one" id="i"></label>"#)
    }
}
