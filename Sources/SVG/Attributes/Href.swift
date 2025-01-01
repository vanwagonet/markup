public protocol HrefTag: TagName {}

// extension Tags.a: HrefTag {}
// extension Tags.animate: HrefTag {}
// extension Tags.animateMotion: HrefTag {}
// extension Tags.animateTransform: HrefTag {}
// extension Tags.feImage: HrefTag {}
// extension Tags.image: HrefTag {}
extension Tags.linearGradient: HrefTag {}
// extension Tags.mpath: HrefTag {}
// extension Tags.pattern: HrefTag {}
extension Tags.radialGradient: HrefTag {}
extension Tags.script: HrefTag {}
// extension Tags.set: HrefTag {}
// extension Tags.textPath: HrefTag {}
extension Tags.use: HrefTag {}

public extension Attribute where Tag: HrefTag {
    /// The `href` attribute defines a link to a resource as a reference URL. The exact meaning of that link depends on the context of each element using it.
    ///
    /// - Parameters:
    ///   - url: The referenced url.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/href)
    @inlinable static func href(_ url: any StringProtocol) -> Self {
        Self("href", value: Text(verbatim: url))
    }
}
