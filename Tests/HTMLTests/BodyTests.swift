import HTML
import Testing

@Suite
struct BodyTests {
    let renderer = StringRenderer()

    @Test func encodeContent() throws {
        renderer.render(
            Body {
                P {
                    Strong { "Hi" }
                    Img()
                    Text(String("Bye"))
                }
                P()
                Strong()
            }
        )
        #expect(
            renderer.string ==
            #"<body><p><strong>Hi</strong><img>Bye</p><p></p><strong></strong></body>"#
        )
    }

    @Test func empty() throws {
        renderer.render(Body())
        #expect(renderer.string == "<body></body>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Body(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<body class="cls one" id="i"></body>"#)
    }
}
