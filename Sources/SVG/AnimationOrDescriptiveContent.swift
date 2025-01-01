import Markup

public protocol AnimationOrDescriptiveContent: Markup {}
public protocol AnimationOrDescriptiveContentTagName: TagName {}

// Animation Elements
// extension Tags.animate: AnimationOrDescriptiveContentTagName {}
// extension Tags.animateMotion: AnimationOrDescriptiveContentTagName {}
// extension Tags.animateTransform: AnimationOrDescriptiveContentTagName {}
// extension Tags.mpath: AnimationOrDescriptiveContentTagName {}
// extension Tags.set: AnimationOrDescriptiveContentTagName {}

// Descriptive Elements
extension Tags.desc: AnimationOrDescriptiveContentTagName {}
extension Tags.metadata: AnimationOrDescriptiveContentTagName {}
extension Tags.title: AnimationOrDescriptiveContentTagName {}

extension Array: AnimationOrDescriptiveContent where Element: AnimationOrDescriptiveContent {}
extension Comment: AnimationOrDescriptiveContent {}
extension Element: AnimationOrDescriptiveContent where Tag: AnimationOrDescriptiveContentTagName {}
extension Either: AnimationOrDescriptiveContent where True: AnimationOrDescriptiveContent, False: AnimationOrDescriptiveContent {}
extension Empty: AnimationOrDescriptiveContent {}
extension Optional: AnimationOrDescriptiveContent where Wrapped: AnimationOrDescriptiveContent {}
extension Pair: AnimationOrDescriptiveContent where First: AnimationOrDescriptiveContent, Second: AnimationOrDescriptiveContent {}
extension VoidElement: AnimationOrDescriptiveContent where Tag: AnimationOrDescriptiveContentTagName {}
