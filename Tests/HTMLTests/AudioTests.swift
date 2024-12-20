import HTML
import Testing

@Suite
struct AudioTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Audio(
            .autoPlay,
            .controls,
            .loop,
            .muted,
            .src("/song.mp3")
        ))
        #expect(
            renderer.string ==
            #"<audio autoplay controls loop muted src="/song.mp3"></audio>"#
        )
    }

    @Test func empty() throws {
        renderer.render(Audio())
        #expect(renderer.string == "<audio></audio>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Audio(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<audio class="cls one" id="i"></audio>"#)
    }

    @Test func policyAttributes() throws {
        renderer.render(Audio(
            .crossOrigin(.anonymous),
            .preload(.metadata)
        ))
        #expect(
            renderer.string ==
            #"<audio crossorigin="anonymous" preload="metadata"></audio>"#
        )
    }
}
