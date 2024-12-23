import HTML
import Testing

@Suite
struct DetailsTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Details(.name("grp"), .open))
        #expect(renderer.string == #"<details name="grp" open></details>"#)
    }

    @Test func empty() throws {
        renderer.render(Details())
        #expect(renderer.string == "<details></details>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Details(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<details class="cls one" id="i"></details>"#)
    }
}
