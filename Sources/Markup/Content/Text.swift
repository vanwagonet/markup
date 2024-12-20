#if canImport(Foundation)
import Foundation
#endif

/// Textual markup content.
public struct Text: Equatable, Markup {
    public typealias Content = Never

    let storage: Storage

    enum Storage: Equatable {
        #if canImport(Foundation)
        case localized(String.LocalizationValue)
        #endif
        case string(String)
    }

    #if canImport(Foundation)
    /// Creates localized text content identified by a key.
    ///
    /// - Parameters:
    ///   - content: A string to display without localization.
    public init(_ localized: String.LocalizationValue) {
        self.storage = .localized(localized)
    }
    #endif

    /// Creates text content that displays a stored string without localization.
    ///
    /// - Parameters:
    ///   - content: The string value to display without localization.
    @_disfavoredOverload
    public init(_ string: any StringProtocol) {
        self.storage = .string(String(string))
    }

    /// Creates text content that displays a string literal without localization.
    ///
    /// - Parameters:
    ///   - content: A string to display without localization.
    public init(verbatim string: any StringProtocol) {
        self.storage = .string(String(string))
    }

    /// Returns the correctly localized text content for the given language.
    ///
    /// - Parameters:
    ///   - language: A language tag identifying the current locale.
    public func string(for language: String) -> String {
        switch storage {
        #if canImport(Foundation)
        case let .localized(localized):
            String(localized: localized, locale: Locale(identifier: language))
        #endif
        case let .string(value):
            value
        }
    }

    public func render(to renderer: any MarkupRenderer) {
        let utf8 = string(for: renderer.context.lang).utf8
        var start = utf8.startIndex
        for current in utf8.indices {
            switch utf8[current] {
            case 38: // &
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&amp;")
                start = utf8.index(after: current)
            case 60: // <
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&lt;")
                start = utf8.index(after: current)
            case 62: // >
                renderer.renderUTF8CodeUnits(utf8[start ..< current])
                renderer.renderStaticString("&gt;")
                start = utf8.index(after: current)
            default:
                ()
            }
        }
        if start < utf8.endIndex {
            renderer.renderUTF8CodeUnits(utf8[start ..< utf8.endIndex])
        }
    }
}
