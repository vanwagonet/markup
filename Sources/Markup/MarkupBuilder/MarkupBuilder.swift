#if canImport(Foundation)
import Foundation
#endif

/// A custom parameter attribute that constructs markup content from closures.
@resultBuilder
public enum MarkupBuilder {
    /// Supports `for..in`  markup.
    ///
    /// - Parameters:
    ///   - expression: Markup content for the block.
    public static func buildArray<Content: Markup>(_ components: [Content]) -> [Content] {
        components
    }

    /// Builds empty markup from a block containing no statements.
    public static func buildBlock() -> Empty {
        Empty()
    }

    /// Supports markup from `if` statements, with `else if` or `else` blocks, as well as `switch` statements.
    ///
    /// - Parameters:
    ///   - first: Markup in the `if` or first `case` branch to conditionally include.
    public static func buildEither<TrueContent: Markup, FalseContent: Markup>(
        first component: TrueContent
    ) -> Either<TrueContent, FalseContent> {
        Either<TrueContent, FalseContent>.first(component)
    }

    /// Supports markup from `if` statements, with `else if` or `else` blocks, as well as `switch` statements.
    ///
    /// - Parameters:
    ///   - second: Markup in an `else if`, `else` or subsequent `case` branch to conditionally include.
    public static func buildEither<TrueContent: Markup, FalseContent: Markup>(
        second component: FalseContent
    ) -> Either<TrueContent, FalseContent> {
        Either<TrueContent, FalseContent>.second(component)
    }

    /// Supports markup in nested block context.
    ///
    /// - Parameters:
    ///   - expression: Markup content for the block.
    public static func buildExpression<Content: Markup>(_ expression: Content) -> Content {
        expression
    }

    #if canImport(Foundation)
    /// Supports localized text markup as a literal, interpolation, variable, or explicit `LocalizationValue`.
    ///
    /// - Parameters:
    ///   - expression: Localized key for the textual content for the block.
    public static func buildExpression(_ expression: String.LocalizationValue) -> Text {
        Text(expression)
    }
    #endif

    /// Supports verbatim text markup as a string variable or explicit `String`.
    ///
    /// - Parameters:
    ///   - expression: Textual content for the block.
    @_disfavoredOverload
    public static func buildExpression(_ expression: any StringProtocol) -> Text {
        Text(expression)
    }

    /// Supports markup from `if` statements, with no `else` block.
    ///
    /// - Parameters:
    ///   - component: Markup to conditionally include.
    public static func buildOptional<Content: Markup>(_ component: Content?) -> Content? {
        component
    }

    /// Builds markup from a initial block content.
    ///
    /// - Parameters:
    ///   - first: Initial content for the block.
    public static func buildPartialBlock<Content: Markup>(first: Content) -> Content {
        first
    }

    /// Builds block markup from combining existing block content to additional markup.
    ///
    /// - Parameters:
    ///   - accumulated: Existing content for the block.
    ///   - next: Additional content to include in the block.
    public static func buildPartialBlock<First: Markup, Second: Markup>(
        accumulated: First,
        next: Second
    ) -> Pair<First, Second> {
        Pair(first: accumulated, second: next)
    }
}
