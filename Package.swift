// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViewStyler",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ViewStyler",
            targets: ["ViewStyler"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.1.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ViewStyler",
            dependencies: ["Kingfisher"]
        )
    ],
    swiftLanguageVersions: [.v5]
)

