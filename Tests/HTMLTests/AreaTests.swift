import HTML
import Testing

@Suite
struct AreaTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Area(
            shape: .default,
            .alt(Text(verbatim: "hi")),
            .href("/other"),
            .target(._blank),
            .rel(.external, .noReferrer)
        ))
        #expect(renderer.string == """
        <area
         shape="default"
         alt="hi"
         href="/other"
         target="_blank"
         rel="external noreferrer"
        >
        """.split(separator: "\n").joined())
    }

    @Test func circle() throws {
        renderer.render(Area(shape: .circle(x: 5, y: 3, radius: 7)))
        #expect(renderer.string == #"<area shape="circle" coords="5,3,7">"#)
    }

    @Test func extraAttributes() throws {
        renderer.render(Area(
            shape: .poly((x: 1, y: 2), (x: 3, y: 4)),
            .download,
            .download(Text(verbatim: "filename")),
            .ping("analytics", "mothership"),
            .referrerPolicy(.sameOrigin),
            .target("frame")
        ))
        #expect(renderer.string == """
        <area
         shape="poly"
         coords="1,2,3,4"
         download
         download="filename"
         ping="analytics mothership"
         referrerpolicy="same-origin"
         target="frame"
        >
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(Area(shape: .default, .class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<area shape="default" class="cls one" id="i">"#)
    }

    @Test func rect() throws {
        renderer.render(Area(shape: .rect(x1: 1, y1: 2, x2: 3, y2: 4)))
        #expect(renderer.string == #"<area shape="rect" coords="1,2,3,4">"#)
    }
}
