// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "vercel-starter-kit-elementary",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(name: "App", targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor", from: "4.102.0"),
        .package(url: "https://github.com/sliemeobn/elementary.git", from: "0.1.2"),
        .package(url: "https://github.com/sliemeobn/elementary-htmx.git", from: "0.2.0"),
        .package(url: "https://github.com/vapor-community/vapor-elementary.git", from: "0.1.0"),
        //.package(path: "../../"),
        .package(url: "https://github.com/apple/swift-async-algorithms", from: "1.0.0"),
        .package(url: "https://github.com/swift-cloud/Vercel", branch: "main"),

    ],
    targets: [
        .executableTarget(
        name: "App",
        dependencies: [
            "Vercel",
            .product(name: "Vapor", package: "vapor"),
            .product(name: "VaporElementary", package: "vapor-elementary"),
            .product(name: "ElementaryHTMX", package: "elementary-htmx"),
            .product(name: "ElementaryHTMXSSE", package: "elementary-htmx"),
            .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),

        ],
        resources: [
            .copy("Public"),
        ],
        swiftSettings: [.enableExperimentalFeature("StrictConcurrency=complete")]

        ),
    ]
)
