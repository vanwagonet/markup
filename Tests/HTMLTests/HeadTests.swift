import HTML
import Testing

@Suite
struct HeadTests {
    let renderer = StringRenderer()
    
    @Test func empty() throws {
        renderer.render(Head())
        #expect(renderer.string == "<head></head>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Head(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<head class="cls one" id="i"></head>"#)
    }

    @Test func metadata() throws {
        let yes = true
        renderer.render(Head {
            // Div() // Causes a compile error.
            if yes {
                Meta(.charset(.utf8))
                for _ in 0..<1 { NoScript() }
            } else {
                Base()
                Link()
                Optional(Script(src: "."))
                Style { "" }
                Title { "" }
            }
        })
        #expect(renderer.string == #"<head><meta charset="utf-8"><noscript></noscript></head>"#)
    }
}
