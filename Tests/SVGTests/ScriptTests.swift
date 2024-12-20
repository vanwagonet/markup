import SVG
import Testing

@Suite
struct ScriptTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Script(.crossOrigin(.anonymous), .href("."), .type("js")))
        #expect(renderer.string == #"<script crossorigin="anonymous" href="." type="js" />"#)
    }

    @Test func inlineContent() throws {
        renderer.render(Script { CData("'see data';") })
        #expect(renderer.string == #"<script><![CDATA['see data';]]></script>"#)
    }

    @Test func coreAttributes() throws {
        renderer.render(Script(.class("cls"), .id("i")))
        #expect(renderer.string == #"<script class="cls" id="i" />"#)
    }
}
