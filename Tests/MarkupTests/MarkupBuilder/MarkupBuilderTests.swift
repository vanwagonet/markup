@testable import Markup
import Testing

@Suite
struct MarkupBuilderTests {
    var no = false
    var one = 1
    var yes = true

    enum TestTag: TagName { static let name = "test" }
    typealias TestEl = VoidElement<TestTag>

    func build<Content: Markup>(@MarkupBuilder _ builder: () -> Content) -> Content {
        builder()
    }

    @Test func empty() throws {
        #expect(build {} == Empty())
    }

    @Test func single() throws {
        #expect(build { TestEl() } == TestEl())
    }

    @Test func pair() throws {
        #expect(
            build {
                TestEl(.init("1"))
                TestEl(.init("2"))
            }
            == Pair(first: TestEl(.init("1")), second: TestEl(.init("2")))
        )
    }

    @Test func triplet() throws {
        #expect(
            build {
                TestEl(.init("1"))
                TestEl(.init("2"))
                TestEl(.init("3"))
            }
            == Pair(first: Pair(first: TestEl(.init("1")), second: TestEl(.init("2"))), second: TestEl(.init("3")))
        )
    }

    @Test func forInRange() throws {
        #expect(
            build {
                for i in 0..<3 {
                    TestEl(.init(String(i)))
                }
            }
            == [ TestEl(.init("0")), TestEl(.init("1")), TestEl(.init("2")) ]
        )
    }

    @Test func forInIterable() throws {
        #expect(
            build {
                let array = [ 3, 4, 5 ]
                for i in array {
                    TestEl(.init(String(i)))
                }
            }
            == [ TestEl(.init("3")), TestEl(.init("4")), TestEl(.init("5")) ]
        )
    }

    @Test func conditional() throws {
        #expect(
            build {
                if yes {
                    TestEl()
                }
            }
            == Optional(TestEl())
        )
    }

    @Test func ifElseTrue() throws {
        #expect(
            build {
                if yes {
                    TestEl(.init("1"))
                } else {
                    TestEl(.init("2"))
                }
            }
            == Either<TestEl, TestEl>.first(TestEl(.init("1")))
        )
    }

    @Test func ifElseFalse() throws {
        #expect(
            build {
                if no {
                    TestEl(.init("1"))
                } else {
                    TestEl(.init("2"))
                }
            }
            == Either<TestEl, TestEl>.second(TestEl(.init("2")))
        )
    }

    @Test func ifElseElse() throws {
        #expect(
            build {
                if no {
                    TestEl(.init("1"))
                } else if no {
                    TestEl(.init("2"))
                } else {
                    TestEl(.init("3"))
                }
            }
            == Either<Either<TestEl, TestEl>, TestEl>.second(TestEl(.init("3")))
        )
    }

    #if canImport(Foundation)
    @Test func localizedString() throws {
        #expect(build { "key" } == Text("key"))
        #expect(build { "key" }.storage == Text.Storage.localized("key"))
    }
    #endif

    @Test func string() throws {
        #expect(build { String("key") } == Text(verbatim: "key"))
        #expect(build { String("key") }.storage == Text.Storage.string("key"))
    }

    @Test func switchStatement() throws {
        #expect(
            build {
                switch one {
                case 0: TestEl()
                case 1: TestEl(.init("1"))
                default: TestEl(.init("2"))
                }
            }
            == Either<Either<TestEl, TestEl>, TestEl>.first(.second(TestEl(.init("1"))))
        )
    }
}
