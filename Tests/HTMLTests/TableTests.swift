import HTML
import Testing

@Suite
struct TableTests {
    let renderer = StringRenderer()

    @Test func children() throws {
        let yes = true
        renderer.render(Table {
            // Text("") // compile error
            Optional(Caption())
            ColGroup()
            if yes {
                THead { TR() }
            } else {
                TBody()
            }
            for _ in 0..<1 {
                TR()
            }
            TFoot()
            Comment("nope")
        })
        #expect(renderer.string == """
        <table>
        <caption></caption>
        <colgroup></colgroup>
        <thead><tr></tr></thead>
        <tr></tr>
        <tfoot></tfoot>
        <!--nope-->
        </table>
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(Table(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<table class="cls one" id="i"></table>"#)
    }
}
