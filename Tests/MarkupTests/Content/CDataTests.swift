@testable import Markup
import Testing

@Suite
struct CDataTests {
    @Test func render() throws {
        let renderer = StringRenderer()
        renderer.render(CData("tokens like ]]> can be <valid>"))
        #expect(renderer.string == "<![CDATA[tokens like ]]]]><![CDATA[> can be <valid>]]>")
    }
}
