import HTML
import Testing

@Suite
struct InputTests {
    let renderer = StringRenderer()

    @Test func formAttributes() throws {
        renderer.render(Input(
            .form("f"),
            .formAction("."),
            .formEncType(.textPlain),
            .formMethod(.post),
            .formNoValidate,
            .formTarget(._self)
        ))
        #expect(renderer.string == """
        <input
         form="f"
         formaction="."
         formenctype="text/plain"
         formmethod="post"
         formnovalidate
         formtarget="_self"
        >
        """.split(separator: "\n").joined())
    }

    @Test func file() throws {
        renderer.render(Input(
            .type(.file),
            .accept("image/png"),
            .capture(.user),
            .multiple
        ))
        #expect(renderer.string == #"<input type="file" accept="image/png" capture="user" multiple>"#)
    }

    @Test func globalAttributes() throws {
        renderer.render(Input(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<input class="cls one" id="i">"#)
    }

    @Test func image() throws {
        renderer.render(Input(
            .type(.image),
            .src("/image.png"),
            .alt(Text("image")),
            .width(1024),
            .height(768)
        ))
        #expect(renderer.string == #"<input type="image" src="/image.png" alt="image" width="1024" height="768">"#)
    }

    @Test func popover() throws {
        renderer.render(Input(.popoverTarget("1"), .popoverTargetAction(.toggle)))
        #expect(renderer.string == #"<input popovertarget="1" popovertargetaction="toggle">"#)
    }

    @Test func radio() throws {
        renderer.render(Input(.type(.radio), .checked))
        #expect(renderer.string == #"<input type="radio" checked>"#)
    }

    @Test func range() throws {
        renderer.render(Input(.type(.range), .min(0), .max(100), .step(5), .value(35)))
        #expect(renderer.string == #"<input type="range" min="0" max="100" step="5" value="35">"#)
    }

    @Test func text() throws {
        renderer.render(Input(
            .type(.text),
            .autoComplete(.on),
            .autoComplete("shipping zip-code"),
            .dirName("dir"),
            .disabled,
            .list("suggestions"),
            .minLength(1), .maxLength(10),
            .name("field"),
            .pattern("\\S"),
            .placeholder(Text("enter")),
            .readOnly,
            .required,
            .size(10),
            .value("abc")
        ))
        #expect(renderer.string == """
        <input
         type="text"
         autocomplete="on"
         autocomplete="shipping zip-code"
         dirname="dir"
         disabled
         list="suggestions"
         minlength="1" maxlength="10"
         name="field"
         pattern="\\S"
         placeholder="enter"
         readonly
         required
         size="10"
         value="abc"
        >
        """.split(separator: "\n").joined())
    }
}
