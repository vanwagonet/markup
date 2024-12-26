import HTML
import Testing

@Suite
struct TemplateTests {
    let renderer = StringRenderer()

    @Test func attributes() throws {
        renderer.render(Template(
            .shadowRootMode(.open),
            .shadowRootClonable,
            .shadowRootDelegatesFocus,
            .shadowRootSerializable
        ))
        #expect(renderer.string == """
        <template
         shadowrootmode="open"
         shadowrootclonable
         shadowrootdelegatesfocus
         shadowrootserializable
        >
        </template>
        """.split(separator: "\n").joined())
    }

    @Test func globalAttributes() throws {
        renderer.render(Template(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<template class="cls one" id="i"></template>"#)
    }
}
