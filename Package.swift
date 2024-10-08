// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "broken",
    products: [
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "M0"),
        .target(
          name: "M1", dependencies: ["M0"]),
        .target(
            name: "M2", dependencies: ["M0"]),
        .target(
          name: "M3", dependencies: ["M1", "M2"]),
        .testTarget(
            name: "brokenTests",
            dependencies: ["M0", "M1", "M2", "M3"]),
    ]
)
