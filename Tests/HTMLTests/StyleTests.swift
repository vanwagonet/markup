import HTML
import Testing

@Suite
struct StyleTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Style(.blocking(.render), .media("all")) { Text(verbatim: "") })
        #expect(renderer.string == #"<style blocking="render" media="all"></style>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Style(.class("cls", "one"), .id("i")) { Text(verbatim: "-") })
        #expect(renderer.string == #"<style class="cls one" id="i">-</style>"#)
    }
}
