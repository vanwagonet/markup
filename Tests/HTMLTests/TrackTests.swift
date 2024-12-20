import HTML
import Testing

@Suite
struct TrackTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Track(
            .default,
            .kind(.subtitles),
            .label(Text(verbatim: "English Subtitles")),
            .src("/track.vtt"),
            .srcLang("en-US")
        ))
        #expect(
            renderer.string ==
            #"<track default kind="subtitles" label="English Subtitles" src="/track.vtt" srclang="en-US">"#
        )
    }

    @Test func empty() throws {
        renderer.render(Track())
        #expect(renderer.string == #"<track>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Track(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<track class="cls one" id="i">"#)
    }
}
