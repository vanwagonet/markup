@testable import Markup
import Testing

@Suite
struct TextTests {
    @Test func encodeString() throws {
        let renderer = StringRenderer()
        renderer.render(Text(String("test <&>")))
        #expect(renderer.string == "test &lt;&amp;&gt;")
    }

    #if canImport(Foundation)
    @Test func encodeLocalized() throws {
        let renderer = StringRenderer()
        renderer.context.lang = "pt-BR"
        renderer.render(
            Text("test <&> \(1_000.1, format: .number.precision(.fractionLength(1)))")
        )
        #expect(renderer.string == "test &lt;&amp;&gt; 1.000,1")
    }
    #endif
}
