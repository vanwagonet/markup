import HTML
import Testing

@Suite
struct ProgressTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Progress(.max(100), .value(45)))
        #expect(renderer.string == #"<progress max="100" value="45"></progress>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Progress(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<progress class="cls one" id="i"></progress>"#)
    }
}
