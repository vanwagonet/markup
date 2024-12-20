#if canImport(Foundation)
import Foundation
#endif
import HTML
import Testing

@Suite
struct InsTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Ins(.cite("/example"), .dateTime(Date(timeIntervalSince1970: 0))))
        #expect(renderer.string == #"<ins cite="/example" datetime="1970-01-01T00:00:00Z"></ins>"#)
    }

    #if canImport(Foundation)
    @Test func date() throws {
        let date = try #require(DateComponents(calendar: .current, year: 2023, month: 1, day: 1).date)
        renderer.render(Ins(.dateTime(date, format: .date)))
        #expect(renderer.string == #"<ins datetime="2023-01-01"></ins>"#)
    }

    @Test func dateTimeLocal() throws {
        let date = try #require(DateComponents(calendar: .current, year: 2023, month: 1, day: 1).date)
        renderer.render(Ins(.dateTime(date, format: .dateTimeLocal)))
        #expect(renderer.string == #"<ins datetime="2023-01-01T00:00:00"></ins>"#)
    }
    #endif

    @Test func dateString() throws {
        renderer.render(Ins(.dateTime("2023-01-01")))
        #expect(renderer.string == #"<ins datetime="2023-01-01"></ins>"#)
    }

    @Test func empty() throws {
        renderer.render(Ins())
        #expect(renderer.string == "<ins></ins>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Ins(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<ins class="cls one" id="i"></ins>"#)
    }
}
