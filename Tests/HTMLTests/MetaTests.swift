import HTML
import Testing

@Suite
struct MetaTests {
    let renderer = StringRenderer()

    @Test func charsetAttributes() throws {
        renderer.render(Meta(.charset(.utf8)))
        #expect(renderer.string == #"<meta charset="utf-8">"#)
    }

    @Test func empty() throws {
        renderer.render(Meta())
        #expect(renderer.string == #"<meta>"#)
    }

    @Test func hTTPAttributes() throws {
        renderer.render(Meta(.httpEquiv("X-UA-Compatible"), .content("IE=edge")))
        #expect(renderer.string == #"<meta http-equiv="X-UA-Compatible" content="IE=edge">"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Meta(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<meta class="cls one" id="i">"#)
    }

    @Test func nameContentAttributes() throws {
        renderer.context.isXML = false
        renderer.render(Meta(.name("description"), .content("web page")))
        #expect(renderer.string == #"<meta name="description" content="web page">"#)
    }
}
