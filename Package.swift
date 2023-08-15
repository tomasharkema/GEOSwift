// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GEOSwift",
    platforms: [.iOS(.v9), .macOS("10.9"), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(
            name: "GEOSwift",
            type: .static,
            targets: ["GEOSwift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tomasharkema/geos.git", revision: "9fb3f39fc7e3bf0d40c21e5fa740ac8a6a0e2315")
    ],
    targets: [
        .target(
            name: "GEOSwift",
            dependencies: ["geos"]
        ),
        .testTarget(
            name: "GEOSwiftTests",
            dependencies: ["GEOSwift"]
        )
    ]
)
