public protocol MetadataContent: Markup {}
public protocol MetadataTagName: HTMLTagName {}

extension Array: MetadataContent where Element: MetadataContent {}
extension Comment: MetadataContent {}
extension Element: MetadataContent where Tag: MetadataTagName {}
extension Either: MetadataContent where True: MetadataContent, False: MetadataContent {}
extension Empty: MetadataContent {}
extension Optional: MetadataContent where Wrapped: MetadataContent {}
extension Pair: MetadataContent where First: MetadataContent, Second: MetadataContent {}
extension VoidElement: MetadataContent where Tag: MetadataTagName {}
