// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Markup",
    platforms: [ .macOS(.v13), /* .linux */ ],
    products: [
        .library(name: "HTML", targets: [ "HTML" ]),
        .library(name: "Markup", targets: [ "Markup" ]),
        .library(name: "SVG", targets: [ "SVG" ]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "HTML", dependencies: [ "Markup", "SVG" ]),
        .testTarget(name: "HTMLTests", dependencies: [ "HTML", "Markup" ]),
        .target(name: "Markup"),
        .testTarget(name: "MarkupTests", dependencies: [ "Markup" ]),
        .target(name: "SVG", dependencies: [ "Markup" ]),
        .testTarget(name: "SVGTests", dependencies: [ "Markup", "SVG" ]),
    ]
)
