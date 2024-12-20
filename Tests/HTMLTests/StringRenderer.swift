import Foundation
@testable import Markup

final class StringRenderer: MarkupRenderer {
    var context = MarkupContext(lang: "en")
    var string = ""

    func render(_ markup: String) {
        string += markup
    }
}
