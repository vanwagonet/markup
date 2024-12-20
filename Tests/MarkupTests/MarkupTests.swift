@testable import Markup
import Testing

@Suite
struct MarkupTests {
    struct TestMarkup: Markup {
        let id: String
        var hidden: Bool = false

        var markup: some Markup {
            TestEl(
                .init("id", value: Text(verbatim: id)),
                .if(hidden, .init("hidden"))
            )
        }
    }

    enum TestTag: TagName { static let name = "test" }
    typealias TestEl = VoidElement<TestTag>

    @Test func render() throws {
        let renderer = StringRenderer()
        renderer.render(TestMarkup(id: "abc"))
        #expect(renderer.string == #"<test id="abc">"#)
    }

    @Test func ifAttribute() throws {
        let renderer = StringRenderer()
        renderer.render(TestMarkup(id: "1", hidden: true))
        #expect(renderer.string == #"<test id="1" hidden>"#)
    }
}
