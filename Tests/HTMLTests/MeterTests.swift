import HTML
import Testing

@Suite
struct MeterTests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(Meter())
        #expect(renderer.string == "<meter></meter>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Meter(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<meter class="cls one" id="i"></meter>"#)
    }

    @Test func rangeAttributes() throws {
        renderer.render(Meter(
            .min(-8.8),
            .low(UInt8(0)),
            .optimum(10),
            .high(Float(20)),
            .max(Float64(100.2)),
            .value(Int32(15)),
            .form("id")
        ))
        #expect(renderer.string == """
        <meter
         min="-8.8"
         low="0"
         optimum="10"
         high="20.0"
         max="100.2"
         value="15"
         form="id"
        ></meter>
        """.split(separator: "\n").joined())
    }
}
