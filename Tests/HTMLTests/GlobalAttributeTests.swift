import HTML
import Testing

@Suite
struct GlobalAttributeTests {
    let renderer = StringRenderer()

    @Test func accessKey() throws {
        renderer.render(Br(.accessKey("a", "b")))
        #expect(renderer.string == #"<br accesskey="a b">"#)
    }

    @Test func autoCapitalize() throws {
        renderer.render(Br(.autoCapitalize(.on)))
        #expect(renderer.string == #"<br autocapitalize="on">"#)
    }

    @Test func autoFocus() throws {
        renderer.render(Br(.autoFocus))
        #expect(renderer.string == #"<br autofocus>"#)
    }

    @Test func classAttribute() throws {
        renderer.render(Br(.class("one", "two")))
        #expect(renderer.string == #"<br class="one two">"#)
    }

    @Test func contentEditable() throws {
        renderer.render(Br(.contentEditable(.plainTextOnly)))
        #expect(renderer.string == #"<br contenteditable="plaintext-only">"#)
    }

    @Test func customAttribute() throws {
        renderer.render(Br(Br.Attribute("x-cust", value: Text(verbatim: "om"))))
        #expect(renderer.string == #"<br x-cust="om">"#)
    }

    @Test func data() throws {
        renderer.render(Br(.data("custom", value: "val")))
        #expect(renderer.string == #"<br data-custom="val">"#)
    }

    @Test func dir() throws {
        renderer.render(Br(.dir(.rtl)))
        #expect(renderer.string == #"<br dir="rtl">"#)
    }

    @Test func draggable() throws {
        renderer.render(Br(.draggable(true)))
        #expect(renderer.string == #"<br draggable="true">"#)
    }

    @Test func elementTiming() throws {
        renderer.render(Br(.elementTiming("et")))
        #expect(renderer.string == #"<br elementtiming="et">"#)
    }

    @Test func enterKeyHint() throws {
        renderer.render(Br(.enterKeyHint(.go)))
        #expect(renderer.string == #"<br enterkeyhint="go">"#)
    }

    @Test func exportParts() throws {
        renderer.render(Br(.exportParts("part1", "part2: part3")))
        #expect(renderer.string == #"<br exportparts="part1,part2: part3">"#)
    }

    @Test func hidden() throws {
        renderer.render(Br(.hidden))
        #expect(renderer.string == #"<br hidden>"#)
    }

    @Test func id() throws {
        renderer.render(Br(.id("id")))
        #expect(renderer.string == #"<br id="id">"#)
    }

    @Test func inert() throws {
        renderer.render(Br(.inert))
        #expect(renderer.string == #"<br inert>"#)
    }

    @Test func inputMode() throws {
        renderer.render(Br(.inputMode(.decimal)))
        #expect(renderer.string == #"<br inputmode="decimal">"#)
    }

    @Test func isAttribute() throws {
        renderer.render(Br(.is("x-el")))
        #expect(renderer.string == #"<br is="x-el">"#)
    }

    @Test func lang() throws {
        renderer.render(Br(.lang("es")))
        #expect(renderer.string == #"<br lang="es">"#)
    }

    @Test func nonce() throws {
        renderer.render(Br(.nonce("8IBTHwOdqNKAWeKl7plt8g==")))
        #expect(renderer.string == #"<br nonce="8IBTHwOdqNKAWeKl7plt8g==">"#)
    }

    @Test func part() throws {
        renderer.render(Br(.part("part1", "part2")))
        #expect(renderer.string == #"<br part="part1 part2">"#)
    }

    @Test func popover() throws {
        renderer.render(Br(.popover))
        #expect(renderer.string == #"<br popover>"#)
    }

    @Test func slot() throws {
        renderer.render(Br(.slot("child")))
        #expect(renderer.string == #"<br slot="child">"#)
    }

    @Test func spellCheck() throws {
        renderer.render(Br(.spellCheck(false)))
        #expect(renderer.string == #"<br spellcheck="false">"#)
    }

    @Test func style() throws {
        renderer.render(Br(.style("display: block")))
        #expect(renderer.string == #"<br style="display: block">"#)
    }

    @Test func tabIndex() throws {
        renderer.render(Br(.tabIndex(-1)))
        #expect(renderer.string == #"<br tabindex="-1">"#)
    }

    @Test func title() throws {
        renderer.render(Br(.title(Text(verbatim: "<&>\""))))
        #expect(renderer.string == #"<br title="&lt;&amp;&gt;&quot;">"#)
    }

    @Test func translate() throws {
        renderer.render(Br(.translate(true), .translate(false)))
        #expect(renderer.string == #"<br translate="yes" translate="no">"#)
    }
}
