import HTML
import Testing

@Suite
struct ArticleTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Article())
        #expect(renderer.string == "<article></article>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Article(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<article class="cls one" id="i"></article>"#)
    }
}
