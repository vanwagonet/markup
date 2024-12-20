public protocol PathLengthTag: TagName {}

// extension Tags.circle: PathLengthTag {}
// extension Tags.ellipse: PathLengthTag {}
// extension Tags.line: PathLengthTag {}
extension Tags.path: PathLengthTag {}
// extension Tags.polygon: PathLengthTag {}
// extension Tags.polyline: PathLengthTag {}
// extension Tags.rect: PathLengthTag {}

public extension Attribute where Tag: PathLengthTag {
    /// The `pathLength` attribute lets authors specify a total length for the path, in user units. This value is then used to calibrate the browser's distance calculations with those of the author, by scaling all distance computations using the ratio pathLength / (computed value of path length)..
    ///
    /// - Parameters:
    ///   - length: The length of the path.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pathLength)
    @inlinable static func pathLength(_ length: any Number) -> Self {
        Self("pathLength", value: Text(verbatim: String(length)))
    }
}
