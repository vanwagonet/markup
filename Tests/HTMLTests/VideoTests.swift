import HTML
import Testing

@Suite
struct VideoTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Video(
            .autoPlay,
            .controls,
            .height(321),
            .loop,
            .muted,
            .src("/song.mp3"),
            .width(123)
        ))
        #expect(
            renderer.string ==
            #"<video autoplay controls height="321" loop muted src="/song.mp3" width="123"></video>"#
        )
    }

    @Test func empty() throws {
        renderer.render(Video())
        #expect(renderer.string == "<video></video>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Video(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<video class="cls one" id="i"></video>"#)
    }

    @Test func policyAttributes() throws {
        renderer.render(Video(
            .crossOrigin(.anonymous),
            .playsInline,
            .poster("poster.png"),
            .preload(.metadata)
        ))
        #expect(
            renderer.string ==
            #"<video crossorigin="anonymous" playsinline poster="poster.png" preload="metadata"></video>"#
        )
    }
}
