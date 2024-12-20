import SVG
import Testing

@Suite
struct LinearGradientTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(LinearGradient(
            .gradientTransform(.rotate("90deg")),
            .gradientUnits(.userSpaceOnUse),
            .href("#"),
            .spreadMethod(.repeat),
            .x1(0), .y1(0.5),
            .x2("0%"), .y2("100%")
        ))
        #expect(renderer.string == """
        <linearGradient
         gradientTransform="rotate(90deg)"
         gradientUnits="userSpaceOnUse"
         href="#"
         spreadMethod="repeat"
         x1="0" y1="0.5" x2="0%" y2="100%"
         />
        """.split(separator: "\n").joined())
    }

    @Test func children() throws {
        renderer.render(LinearGradient {
            // Defs() // Causes compile error
            Stop(.offset("0%"), .stopColor("blue"))
            Stop(.offset("100%"), .stopOpacity(1))
        })
        #expect(renderer.string == """
        <linearGradient>
        <stop offset="0%" stop-color="blue" />
        <stop offset="100%" stop-opacity="1" />
        </linearGradient>
        """.split(separator: "\n").joined())
    }

    @Test func coreAttributes() throws {
        renderer.render(LinearGradient(.class("cls"), .id("i")))
        #expect(renderer.string == #"<linearGradient class="cls" id="i" />"#)
    }
}
