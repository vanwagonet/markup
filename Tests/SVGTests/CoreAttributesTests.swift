import SVG
import Testing

@Suite
struct CoreAttributesTests {
    let renderer = StringRenderer()

    @Test func classList() throws {
        renderer.render(SVG(.class("a", "b"), .class([ "1", "2" ])) {})
        #expect(renderer.string == #"<svg class="a b" class="1 2"></svg>"#)
    }

    @Test func data() throws {
        renderer.render(SVG(.data("x", value: "y")) {})
        #expect(renderer.string == #"<svg data-x="y"></svg>"#)
    }

    @Test func id() throws {
        renderer.render(SVG(.id("2")) {})
        #expect(renderer.string == #"<svg id="2"></svg>"#)
    }

    @Test func lang() throws {
        renderer.render(SVG(.lang("es")) {})
        #expect(renderer.string == #"<svg lang="es"></svg>"#)
    }

    @Test func style() throws {
        renderer.render(SVG(.style("fill:none")) {})
        #expect(renderer.string == #"<svg style="fill:none"></svg>"#)
    }

    @Test func tabIndex() throws {
        renderer.render(SVG(.tabIndex(5)) {})
        #expect(renderer.string == #"<svg tabindex="5"></svg>"#)
    }
}
