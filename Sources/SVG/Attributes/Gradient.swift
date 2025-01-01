public protocol GradientTag: TagName {}

extension Tags.linearGradient: GradientTag {}
extension Tags.radialGradient: GradientTag {}

public extension Attribute where Tag: GradientTag {
    /// The `gradientTransform` attribute contains the definition of an optional additional transformation from the gradient coordinate system onto the target coordinate system (i.e., userSpaceOnUse or objectBoundingBox). This allows for things such as skewing the gradient. This additional transformation matrix is post-multiplied to (i.e., inserted to the right of) any previously defined transformations, including the implicit transformation necessary to convert from object bounding box units to user space.
    ///
    /// - Parameters:
    ///   - tansforms: One or more transforms to apply to this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradientTransform)
    @inlinable static func gradientTransform(_ transforms: TransformFunction...) -> Self {
        Self("gradientTransform", value: Text(verbatim: transforms.map(\.string).joined(separator: " ")))
    }

    /// The `gradientUnits` attribute defines the coordinate system used for attributes specified on the gradient elements.
    ///
    /// - Parameters:
    ///   - units: The coordinate space for this element.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradientUnits)
    @inlinable static func gradientUnits(_ units: CoordinateSystem) -> Self {
        Self("gradientUnits", value: Text(verbatim: units.rawValue))
    }

    /// The `spreadMethod` attribute determines how a shape is filled beyond the defined edges of a gradient.
    ///
    /// - Parameters:
    ///   - method: The method for this gradient.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spreadMethod)
    @inlinable static func spreadMethod(_ method: SpreadMethod) -> Self {
        Self("spreadMethod", value: Text(verbatim: method.rawValue))
    }
}

public enum CoordinateSystem: String {
    /// Bounds coordinate space
    ///
    /// This value indicates that the user coordinate system for the attributes is established using the bounding box of the element to which the gradient is applied and then applying the transform specified by attribute gradientTransform.
    ///
    /// Percentages represent values relative to the bounding box for the object.
    ///
    /// With this value and gradientTransform being the identity matrix, the normal of the linear gradient is perpendicular to the gradient vector in object bounding box space (i.e., the abstract coordinate system where (0,0) is at the top/left of the object bounding box and (1,1) is at the bottom/right of the object bounding box). When the object's bounding box is not square, the gradient normal which is initially perpendicular to the gradient vector within object bounding box space may render non-perpendicular relative to the gradient vector in user space. If the gradient vector is parallel to one of the axes of the bounding box, the gradient normal will remain perpendicular. This transformation is due to application of the non-uniform scaling transformation from bounding box space to user space.
    case objectBoundingBox

    /// User coordinate space
    ///
    /// This value indicates that the attributes represent values in the coordinate system that results from taking the current user coordinate system in place at the time when the gradient element is referenced (i.e., the user coordinate system for the element referencing the gradient element via a fill or stroke property) and then applying the transform specified by attribute gradientTransform. Percentages represent values relative to the current SVG viewport.
    case userSpaceOnUse
}

/// The `spreadMethod` attribute determines how a shape is filled beyond the defined edges of a gradient.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spreadMethod)
public enum SpreadMethod: String {
    /// This value indicates that the final color of the gradient fills the shape beyond the gradient's edges.
    case pad

    /// This value indicates that the gradient repeats in reverse beyond its edges.
    case reflect

    /// This value specifies that the gradient repeats in the original order beyond its edges.
    case `repeat`
}
