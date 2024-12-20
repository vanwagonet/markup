/// The `transform-function` CSS data type represents a transformation that affects an element's appearance. Transformation functions can rotate, resize, distort, or move an element in 2D or 3D space. It is used in the transform property.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function)
public enum TransformFunction {
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotate)
    case rotate(String) // TODO: Angle type

    // TODO: add the rest

    public var string: String {
        switch self {
        case .rotate(let angle): "rotate(\(angle))"
        }
    }
}
