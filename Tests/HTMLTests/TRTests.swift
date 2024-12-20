import HTML
import Testing

@Suite
struct TRTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(TR())
        #expect(renderer.string == "<tr></tr>")
    }

    @Test func globalAttributes() throws {
        renderer.render(TR(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<tr class="cls one" id="i"></tr>"#)
    }

    @Test func rowContent() throws {
        let yes = true
        renderer.render(TR {
            // Div() // Causes a compile error.
            TH()
            Optional(TD())
            if yes {
                Script()
            } else {
                for _ in 0..<1 { Template() }
            }
        })
        #expect(renderer.string == "<tr><th></th><td></td><script></script></tr>")
    }
}
