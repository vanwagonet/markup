import HTML
import Testing

@Suite
struct IFrameTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(IFrame(
            .allow("fullscreen"),
            .height(10),
            .loading(.eager),
            .name("f"),
            .referrerPolicy(.origin),
            .sandbox(""),
            .src("."),
            .width(5)
        ))
        #expect(renderer.string == """
        <iframe
         allow="fullscreen"
         height="10"
         loading="eager"
         name="f"
         referrerpolicy="origin"
         sandbox=""
         src="."
         width="5"
        >
        </iframe>
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(IFrame(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<iframe class="cls one" id="i"></iframe>"#)
    }
}
