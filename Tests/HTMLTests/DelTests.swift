#if canImport(Foundation)
import Foundation
#endif
import HTML
import Testing

@Suite
struct DelTests {
    let renderer = StringRenderer()

    @Test func basicAttributes() throws {
        renderer.render(Del(.cite("/example"), .dateTime(Date(timeIntervalSince1970: 0))))
        #expect(renderer.string == #"<del cite="/example" datetime="1970-01-01T00:00:00Z"></del>"#)
    }

    #if canImport(Foundation)
    @Test func date() throws {
        let date = try #require(DateComponents(calendar: .current, year: 2023, month: 1, day: 1).date)
        renderer.render(Del(.dateTime(date, format: .date)))
        #expect(renderer.string == #"<del datetime="2023-01-01"></del>"#)
    }

    @Test func dateTimeLocal() throws {
        let date = try #require(DateComponents(calendar: .current, year: 2023, month: 1, day: 1).date)
        renderer.render(Del(.dateTime(date, format: .dateTimeLocal)))
        #expect(renderer.string == #"<del datetime="2023-01-01T00:00:00"></del>"#)
    }
    #endif

    @Test func dateString() throws {
        renderer.render(Del(.dateTime("2023-01-01")))
        #expect(renderer.string == #"<del datetime="2023-01-01"></del>"#)
    }

    @Test func empty() throws {
        renderer.render(Del())
        #expect(renderer.string == "<del></del>")
    }

    @Test func globalAttributes() throws {
        renderer.render(Del(.class("cls", "one"), .id("i")))
        #expect(renderer.string == #"<del class="cls one" id="i"></del>"#)
    }
}
