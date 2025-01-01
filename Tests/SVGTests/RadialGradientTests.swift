import SVG
import Testing

@Suite
struct RadialGradientTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(RadialGradient(
            .gradientTransform(.rotate("90deg")),
            .gradientUnits(.userSpaceOnUse),
            .href("#"),
            .spreadMethod(.repeat),
            .cx(0), .cy(0.5),
            .fx("0%"), .fy("100%"),
            .r(1), .fr(5)
        ))
        #expect(renderer.string == """
        <radialGradient
         gradientTransform="rotate(90deg)"
         gradientUnits="userSpaceOnUse"
         href="#"
         spreadMethod="repeat"
         cx="0" cy="0.5"
         fx="0%" fy="100%"
         r="1" fr="5"
         />
        """.split(separator: "\n").joined())
    }

    @Test func children() throws {
        renderer.render(RadialGradient {
            // Defs() // Causes compile error
            Stop(.offset("0%"), .stopColor("blue"))
            Stop(.offset("100%"), .stopOpacity(1))
        })
        #expect(renderer.string == """
        <radialGradient>
        <stop offset="0%" stop-color="blue" />
        <stop offset="100%" stop-opacity="1" />
        </radialGradient>
        """.split(separator: "\n").joined())
    }

    @Test func coreAttributes() throws {
        renderer.render(RadialGradient(.class("cls"), .id("i")))
        #expect(renderer.string == #"<radialGradient class="cls" id="i" />"#)
    }
}
