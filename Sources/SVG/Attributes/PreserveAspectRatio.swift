public protocol PreserveAspectRatioTag: TagName {}

// extension Tags.feImage: PreserveAspectRatioTag {}
// extension Tags.image: PreserveAspectRatioTag {}
// extension Tags.marker: PreserveAspectRatioTag {}
// extension Tags.pattern: PreserveAspectRatioTag {}
extension Tags.svg: PreserveAspectRatioTag {}
// extension Tags.symbol: PreserveAspectRatioTag {}
// extension Tags.view: PreserveAspectRatioTag {}

public extension Attribute where Tag: PreserveAspectRatioTag {
    /// The `preserveAspectRatio` attribute indicates how an element with a `viewBox` providing a given aspect ratio must fit into a viewport with a different aspect ratio.
    ///
    /// - Parameters:
    ///   - align: The alignment relative to the viewport.
    ///   - mode: Scale to `meet` (contain) or `slice` (cover).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preserveAspectRatio)
    @inlinable static func preserveAspectRatio(
        align: PreserveAspectRatioAlign,
        mode: PreserveAspectRatioMode? = nil
    ) -> Self {
        Self("preserveAspectRatio", value: Text(
            verbatim: mode.map { "\(align.rawValue) \($0.rawValue)" } ?? align.rawValue
        ))
    }
}

public enum PreserveAspectRatioAlign: String {
    /// Does not force uniform scaling. Scale the graphic content of the given element non-uniformly if necessary such that the element's bounding box exactly matches the viewport rectangle. Note that if `align` is none, then the optional `mode` value is ignored.
    case none

    /// Forces uniform scaling. Align the `min-x` of the element's viewBox with the smallest X value of the viewport. Align the `min-y` of the element's viewBox with the smallest Y value of the viewport.
    case xMinYMin

    /// Forces uniform scaling. Align the midpoint X value of the element's viewBox with the midpoint X value of the viewport. Align the `min-y` of the element's viewBox with the smallest Y value of the viewport.
    case xMidYMin

    /// Forces uniform scaling. Align the `min-x`+`width` of the element's viewBox with the maximum X value of the viewport. Align the `min-y` of the element's viewBox with the smallest Y value of the viewport.
    case xMaxYMin

    /// Forces uniform scaling. Align the `min-x` of the element's viewBox with the smallest X value of the viewport. Align the midpoint Y value of the element's viewBox with the midpoint Y value of the viewport.
    case xMinYMid

    /// Forces uniform scaling. Align the midpoint X value of the element's viewBox with the midpoint X value of the viewport. Align the midpoint Y value of the element's viewBox with the midpoint Y value of the viewport. This is the default value.
    case xMidYMid

    /// Forces uniform scaling. Align the `min-x`+`width` of the element's viewBox with the maximum X value of the viewport. Align the midpoint Y value of the element's viewBox with the midpoint Y value of the viewport.
    case xMaxYMid

    /// Forces uniform scaling. Align the `min-x` of the element's viewBox with the smallest X value of the viewport. Align the `min-y`+`height` of the element's viewBox with the maximum Y value of the viewport.
    case xMinYMax

    /// Forces uniform scaling. Align the midpoint X value of the element's viewBox with the midpoint X value of the viewport. Align the `min-y`+`height` of the element's viewBox with the maximum Y value of the viewport.
    case xMidYMax

    /// Forces uniform scaling. Align the `min-x`+`width` of the element's viewBox with the maximum X value of the viewport. Align the `min-y`+`height` of the element's viewBox with the maximum Y value of the viewport.
    case xMaxYMax
}

/// Specifying the `meet` or `slice` reference is optional and, if provided, it must be one only one of two keywords. `meet` is the default value.
public enum PreserveAspectRatioMode: String {
    /// Causes the viewBox to fit inside the viewport.
    ///
    /// Scales the graphic such that:
    ///  - The aspect ratio is preserved.
    ///  - The entire viewBox is visible within the viewport.
    ///  - The viewBox is scaled up as much as possible, while still meeting the other criteria.
    /// In this case, if the aspect ratio of the graphic does not match the viewport, some of the viewport will extend beyond the bounds of the viewBox (i.e., the area into which the viewBox will draw will be smaller than the viewport).
    case meet

    /// Causes the viewBox to cover the viewport.
    ///
    /// Scales the graphic such that:
    ///   - The aspect ratio is preserved.
    ///   - The entire viewport is covered by the viewBox.
    ///   - The viewBox is scaled down as much as possible, while still meeting the other criteria.
    /// In this case, if the aspect ratio of the viewBox does not match the viewport, some of the viewBox will extend beyond the bounds of the viewport (i.e., the area into which the viewBox will draw is larger than the viewport).
    case slice
}
