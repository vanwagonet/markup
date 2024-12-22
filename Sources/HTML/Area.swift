import Markup

/// `<area>`: The Image Map Area element
///
/// The `<area>` HTML element defines an area inside an image map that has predefined clickable areas.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area)
public typealias Area = VoidElement<Tags.area>
extension Tags { public enum area: HTMLTagName { public static let name = "area" } }

public extension Area {
    /// Creates an area with the specified shape.
    ///
    /// - Parameters:
    ///   - shape: The shape for this area.
    ///   - attributes: Additional attributes for this area.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#shape)
    init(shape: AreaShape, _ attributes: Attribute...) {
        var shapeAttributes: [Attribute] = [
            Attribute("shape", value: Text(verbatim: shape.shape)),
        ]
        if let coords = shape.coords {
            shapeAttributes.append(
                Attribute("coords", value: Text(verbatim: coords))
            )
        }
        shapeAttributes.append(contentsOf: attributes)
        self.init(shapeAttributes)
    }

    /// Creates an area with the specified shape.
    ///
    /// - Parameters:
    ///   - shape: The shape for this area.
    ///   - attributes: Additional attributes for this area.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#shape)
    init(shape: AreaShape, _ attributes: [Attribute]) {
        var shapeAttributes: [Attribute] = [
            Attribute("shape", value: Text(verbatim: shape.shape)),
        ]
        if let coords = shape.coords {
            shapeAttributes.append(
                Attribute("coords", value: Text(verbatim: coords))
            )
        }
        shapeAttributes.append(contentsOf: attributes)
        self.init(shapeAttributes)
    }

}

public extension Attribute<Tags.area> {
    /// Defines an alternative text description of the image.
    ///
    /// - Parameters:
    ///   - description: The textual description of the image.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#alt)
    @inlinable static func alt(_ description: Text) -> Self {
        Self("alt", value: description)
    }

    /// Causes the browser to treat the linked URL as a download. The browser will suggest a filename from other hints.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#download)
    @inlinable static var download: Self {
        download(nil)
    }

    /// Causes the browser to treat the linked URL as a download.
    ///
    /// - Parameters:
    ///   - filename: An optional preferred filename. If `nil`, the browser will suggest one from other hints.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#download)
    @inlinable static func download(_ filename: Text?) -> Self {
        Self("download", value: filename)
    }

    /// The URL that the hyperlink points to.
    ///
    /// - Parameters:
    ///   - url: The URL string that the hyperlink points to.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#href)
    @inlinable static func href(_ url: any StringProtocol) -> Self {
        Self("href", value: Text(verbatim: url))
    }

    ///. When the link is followed, the browser will send POST requests with the body PING to the URLs.
    ///
    /// - Parameters:
    ///   - urls: The list of URLs to ping.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#ping)
    @inlinable static func ping<S: StringProtocol>(_ urls: S...) -> Self {
        ping(urls)
    }

    ///. When the link is followed, the browser will send POST requests with the body PING to the URLs.
    ///
    /// - Parameters:
    ///   - urls: The list of URLs to ping.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#ping)
    @inlinable static func ping<S>(_ urls: S) -> Self where S: Sequence, S.Element: StringProtocol {
        Self("ping", value: Text(verbatim: urls.joined(separator: " ")))
    }

    /// Indicates which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The referrer policy.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#referrerpolicy)
    @inlinable static func referrerPolicy(_ policy: ReferrerPolicy) -> Self {
        Self("referrerpolicy", value: Text(verbatim: policy.rawValue))
    }

    /// The relationship of the linked URL as link types.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
    @inlinable static func rel(_ types: ARelationshipType...) -> Self {
        rel(types)
    }

    /// The relationship of the linked URL as link types.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
    @inlinable static func rel<S>(_ types: S) -> Self where S: Sequence, S.Element == ARelationshipType {
        Self("rel", value: Text(verbatim: types.map(\.rawValue).joined(separator: " ")))
    }

    /// Where to display the linked URL, as a keyword for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A keyword target context to display the link.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#target)
    @inlinable static func target(_ target: Target) -> Self {
        .target(target.rawValue)
    }

    /// Where to display the linked URL, as the name for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A tab, window, or `iframe` name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#target)
    @inlinable static func target(_ target: any StringProtocol) -> Self {
        Self("target", value: Text(verbatim: target))
    }
}

/// The shape of the associated hot spot.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#shape)
public enum AreaShape {
    /// A circular region.
    ///
    /// - Parameters:
    ///   - x: The value specifies the center x coordinate of the circle.
    ///   - y: The value specifies the center y coordinate of the circle.
    ///   - radius: The value specifies the radius of the circle.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#coords)
    case circle(x: Int, y: Int, radius: Int)

    /// The remaining area beyond any defined shapes.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#shape)
    case `default`

    /// A polygon region.
    ///
    /// - Parameters:
    ///   - points: The list of x,y coordinate of each vertex in the polygon.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#coords)
    case poly(_ points: [(x: Int, y: Int)])

    /// A rectangular region.
    ///
    /// - Parameters:
    ///   - x1: The value specifies the top-left x coordinate of the rectangle.
    ///   - y1: The value specifies the top-left y coordinate of the rectangle.
    ///   - x2: The value specifies the bottom-right x coordinate of the rectangle.
    ///   - y2: The value specifies the bottom-right y coordinate of the rectangle.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#coords)
    case rect(x1: Int, y1: Int, x2: Int, y2: Int)

    /// A polygon region.
    ///
    /// - Parameters:
    ///   - coords: The list of x,y coordinate of each vertex in the polygon.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/area#coords)
    public static func poly(_ points: (x: Int, y: Int)...) -> Self {
        poly(points)
    }

    var shape: String {
        switch self {
        case .circle: return "circle"
        case .default: return "default"
        case .poly: return "poly"
        case .rect: return "rect"
        }
    }

    var coords: String? {
        switch self {
        case let .circle(x, y, radius): return "\(x),\(y),\(radius)"
        case .default: return nil
        case let .poly(points): return points.map { "\($0.x),\($0.y)" } .joined(separator: ",")
        case let .rect(x1, y1, x2, y2): return "\(x1),\(y1),\(x2),\(y2)"
        }
    }
}
