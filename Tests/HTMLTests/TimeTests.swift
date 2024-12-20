#if canImport(Foundation)
import Foundation
#endif
import HTML
import Testing

@Suite
struct TimeTests {
    let renderer = StringRenderer()

    #if canImport(Foundation)
    @Test func date() throws {
        let date = try #require(DateComponents(calendar: .current, year: 2023, month: 1, day: 1).date)
        renderer.render(Time(.dateTime(date, format: .date)))
        #expect(renderer.string == #"<time datetime="2023-01-01"></time>"#)
    }

    @Test func dateTimeLocal() throws {
        let date = try #require(DateComponents(calendar: .current, year: 2023, month: 1, day: 1).date)
        renderer.render(Time(.dateTime(date, format: .dateTimeLocal)))
        #expect(renderer.string == #"<time datetime="2023-01-01T00:00:00"></time>"#)
    }
    #endif

    @Test func dateString() throws {
        renderer.render(Time(.dateTime("2023-01-01")))
        #expect(renderer.string == #"<time datetime="2023-01-01"></time>"#)
    }

    @Test func empty() throws {
        renderer.render(Time())
        #expect(renderer.string == "<time></time>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Time(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<time class="cls one" id="i"></time>"#)
    }
}
