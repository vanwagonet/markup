import HTML
import Testing

@Suite
struct StyleTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Style(.blocking(.render), .media("all")))
        #expect(renderer.string == #"<style blocking="render" media="all"></style>"#)
    }

    @Test func escaping() throws {
        renderer.render(Style([], "a > b { content: '</' }"))
        #expect(renderer.string == #"<style>a > b { content: '\3C\2F' }</style>"#)
    }


    @Test func globalAttributes() throws {
        renderer.render(Style(.class("cls", "one"), .id("i"), content: "-"))
        #expect(renderer.string == #"<style class="cls one" id="i">-</style>"#)
    }
}
