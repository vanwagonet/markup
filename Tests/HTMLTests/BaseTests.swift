import HTML
import Testing

@Suite
struct BaseTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Base(
            .href("/other"),
            .target(._blank)
        ))
        #expect(renderer.string == #"<base href="/other" target="_blank">"#)
    }

    @Test func empty() throws {
        renderer.render(Base())
        #expect(renderer.string == #"<base>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Base(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<base class="cls one" id="i">"#)
    }
}
