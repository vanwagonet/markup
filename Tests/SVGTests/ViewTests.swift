import SVG
import Testing

@Suite
struct ViewTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(View(.viewBox(minX: 0, minY: 0, width: 1, height: 1), .preserveAspectRatio(align: .none)))
        #expect(renderer.string == #"<view viewBox="0 0 1 1" preserveAspectRatio="none" />"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(View(.class("cls"), .id("i")))
        #expect(renderer.string == #"<view class="cls" id="i" />"#)
    }
}
