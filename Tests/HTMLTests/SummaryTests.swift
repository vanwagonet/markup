import HTML
import Testing

@Suite
struct SummaryTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Summary())
        #expect(renderer.string == "<summary></summary>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Summary(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<summary class="cls one" id="i"></summary>"#)
    }
}
