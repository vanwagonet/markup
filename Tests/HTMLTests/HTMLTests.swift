import HTML
import Testing

@Suite
struct HTMLTests {
    let renderer = StringRenderer()

    @Test func encodeContent() throws {
        renderer.render(HTML {
            Head()
            Body()
        })
        #expect(renderer.string == "<!DOCTYPE html><html><head></head><body></body></html>")
    }

    @Test func globalAttributes() throws {
        renderer.render(HTML(.class("cls", "one"), .id("i")) {})
        #expect(renderer.string == #"<!DOCTYPE html><html class="cls one" id="i"></html>"#)
    }

    @Test func lang() throws {
        renderer.render(HTML(.lang("pt-BR")) {})
        #expect(renderer.string == #"<!DOCTYPE html><html lang="pt-BR"></html>"#)
    }

    @Test func namespace() throws {
        renderer.render(HTML(.xmlns(.xhtml)) {})
        #expect(renderer.string == #"<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"></html>"#)
    }
}
