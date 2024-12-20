import HTML
import Testing

@Suite
struct H1_6Tests {
    let renderer = StringRenderer()

    @Test func empty() throws {
        renderer.render(H1())
        #expect(renderer.string == "<h1></h1>")
        renderer.string = ""
        renderer.render(H2())
        #expect(renderer.string == "<h2></h2>")
        renderer.string = ""
        renderer.render(H3())
        #expect(renderer.string == "<h3></h3>")
        renderer.string = ""
        renderer.render(H4())
        #expect(renderer.string == "<h4></h4>")
        renderer.string = ""
        renderer.render(H5())
        #expect(renderer.string == "<h5></h5>")
        renderer.string = ""
        renderer.render(H6())
        #expect(renderer.string == "<h6></h6>")
    }

    @Test func globalAttributes() throws {
        renderer.render(H1(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<h1 class="cls one" id="i"></h1>"#)
        renderer.string = ""
        renderer.render(H2(.class("cls", "two"), .id("i")))
        #expect(renderer.string == #"<h2 class="cls two" id="i"></h2>"#)
        renderer.string = ""
        renderer.render(H3(.class("cls", "three"), .id("i")))
        #expect(renderer.string == #"<h3 class="cls three" id="i"></h3>"#)
        renderer.string = ""
        renderer.render(H4(.class("cls", "four"), .id("i")))
        #expect(renderer.string == #"<h4 class="cls four" id="i"></h4>"#)
        renderer.string = ""
        renderer.render(H5(.class("cls", "five"), .id("i")))
        #expect(renderer.string == #"<h5 class="cls five" id="i"></h5>"#)
        renderer.string = ""
        renderer.render(H6(.class("cls", "six"), .id("i")))
        #expect(renderer.string == #"<h6 class="cls six" id="i"></h6>"#)
    }
}
