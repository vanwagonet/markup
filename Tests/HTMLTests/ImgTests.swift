import HTML
import Testing

@Suite
struct ImgTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Img(
            .src("/image.png"),
            .alt(Text("image")),
            .width(1024),
            .height(768)
        ))
        #expect(
            renderer.string ==
            #"<img src="/image.png" alt="image" width="1024" height="768">"#
        )
    }

    @Test func globalAttributes() throws {
        renderer.render(Img(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<img class="cls one" id="i">"#)
    }

    @Test func mapAttributes() throws {
        renderer.render(Img(.isMap, .useMap("#map")))
        #expect(renderer.string == ##"<img ismap usemap="#map">"##)
    }

    @Test func policyAttributes() throws {
        renderer.render(Img(
            .src("#"),
            .crossOrigin(.anonymous),
            .decoding(.async),
            .elementTiming("i"),
            .loading(.lazy),
            .referrerPolicy(.origin)
        ))
        #expect(renderer.string == """
        <img
         src="#"
         crossorigin="anonymous"
         decoding="async"
         elementtiming="i"
         loading="lazy"
         referrerpolicy="origin"
        >
        """.split(separator: "\n").joined())
    }

    @Test func responsiveAttributes() throws {
        renderer.render(Img(
            .src("#"),
            .sizes("(max-width: 400px) 400px", "800px"),
            .srcSet(.width(("/400.png", 400), ("/800.png", 800))),
            .srcSet(.density("/1.png", ("/2.5.png", 2.5), ("/3.png", 3)))
        ))
        #expect(renderer.string == """
        <img
         src="#"
         sizes="(max-width: 400px) 400px, 800px"
         srcset="/400.png 400w, /800.png 800w"
         srcset="/1.png, /2.5.png 2.5x, /3.png 3x"
        >
        """.split(separator: "\n").joined())
    }
}
