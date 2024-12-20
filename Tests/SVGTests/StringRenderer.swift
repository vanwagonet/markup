import Foundation
@testable import Markup

final class StringRenderer: MarkupRenderer {
    var context = MarkupContext(lang: "en", isXML: true)
    var string = ""

    func render(_ markup: String) {
        string += markup
    }
}
