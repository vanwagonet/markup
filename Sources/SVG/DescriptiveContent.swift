import Markup

public protocol DescriptiveContent: Markup {}
public protocol DescriptiveContentTagName: TagName {}

extension Tags.desc: DescriptiveContentTagName {}
extension Tags.metadata: DescriptiveContentTagName {}
extension Tags.title: DescriptiveContentTagName {}

extension Array: DescriptiveContent where Element: DescriptiveContent {}
extension Comment: DescriptiveContent {}
extension Element: DescriptiveContent where Tag: DescriptiveContentTagName {}
extension Either: DescriptiveContent where True: DescriptiveContent, False: DescriptiveContent {}
extension Empty: DescriptiveContent {}
extension Optional: DescriptiveContent where Wrapped: DescriptiveContent {}
extension Pair: DescriptiveContent where First: DescriptiveContent, Second: DescriptiveContent {}
extension VoidElement: DescriptiveContent where Tag: DescriptiveContentTagName {}
