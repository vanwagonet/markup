import HTML
import Testing

@Suite
struct CanvasTests {
    let renderer = StringRenderer()

    @Test func encodeContent() throws {
        renderer.render(
            Canvas(.width(100), .height(50)) {
                String("fallback")
            }
        )
        #expect(renderer.string == #"<canvas width="100" height="50">fallback</canvas>"#)
    }

    @Test func empty() throws {
        renderer.render(Canvas())
        #expect(renderer.string == "<canvas></canvas>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Canvas(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<canvas class="cls one" id="i"></canvas>"#)
    }
}
