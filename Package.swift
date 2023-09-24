// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "elastic-swift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ElasticSwift",
            targets: ["ElasticSwift"]
        ),
        .library(
            name: "ElasticSwiftQueryDSL",
            targets: ["ElasticSwiftQueryDSL"]
        ),
        .library(
            name: "ElasticSwiftNetworkingNIO",
            targets: ["ElasticSwiftNetworkingNIO"]
        ),
        .library(
            name: "ElasticSwiftNetworking",
            targets: ["ElasticSwiftNetworking"]
        ),
        .library(
            name: "ElasticSwiftCore",
            targets: ["ElasticSwiftCore"]
        ),
        .library(
            name: "ElasticSwiftCodableUtils",
            targets: ["ElasticSwiftCodableUtils"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-nio.git", .exact("2.22.1")),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", .exact("2.9.1")),
        .package(url: "https://github.com/apple/swift-nio-transport-services.git", .exact("1.9.0")),
        .package(url: "https://github.com/apple/swift-log.git", .exact("1.4.0")),
        .package(url: "https://github.com/swift-server/async-http-client.git", .exact("1.2.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ElasticSwift",
            dependencies: ["ElasticSwiftCore", "ElasticSwiftQueryDSL", "ElasticSwiftCodableUtils", "Logging", "NIOHTTP1", "NIOConcurrencyHelpers"]
        ),
        .target(
            name: "ElasticSwiftQueryDSL",
            dependencies: ["ElasticSwiftCore", "ElasticSwiftCodableUtils", "Logging"]
        ),
        .target(
            name: "ElasticSwiftNetworkingNIO",
            dependencies: ["ElasticSwiftCore", "Logging", "NIO", "NIOHTTP1", "AsyncHTTPClient", "NIOFoundationCompat", "NIOSSL", "NIOTransportServices", "NIOConcurrencyHelpers"]
        ),
        .target(
            name: "ElasticSwiftNetworking",
            dependencies: ["ElasticSwiftCore", "Logging", "NIOHTTP1"]
        ),
        .target(
            name: "ElasticSwiftCore",
            dependencies: ["Logging", "NIOHTTP1"]
        ),
        .target(
            name: "ElasticSwiftCodableUtils",
            dependencies: []
        ),
        .testTarget(
            name: "ElasticSwiftTests",
            dependencies: ["ElasticSwift", "ElasticSwiftQueryDSL", "ElasticSwiftCore", "ElasticSwiftCodableUtils", "ElasticSwiftNetworkingNIO", "ElasticSwiftNetworking", "UnitTestSettings"]
        ),
        .testTarget(
            name: "ElasticSwiftCodableUtilsTests",
            dependencies: ["ElasticSwiftCodableUtils", "Logging", "UnitTestSettings"]
        ),
        .testTarget(
            name: "ElasticSwiftQueryDSLTests",
            dependencies: ["ElasticSwiftCore", "ElasticSwiftQueryDSL", "Logging", "UnitTestSettings"]
        ),
        .testTarget(
            name: "ElasticSwiftCoreTests",
            dependencies: ["ElasticSwiftCore", "Logging", "UnitTestSettings"]
        ),
        .testTarget(
            name: "ElasticSwiftNetworkingTests",
            dependencies: ["ElasticSwiftNetworking", "ElasticSwiftCore", "Logging", "NIOHTTP1", "UnitTestSettings"]
        ),
        .target(
            name: "UnitTestSettings",
            dependencies: ["Logging"],
            path: "Tests/UnitTestSettings"
        ),
    ]
)
