// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MagicSync",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "MagicSync",
            targets: ["MagicSync"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CofficLab/MagicKit.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MagicSync",
            dependencies: [
                .product(name: "MagicKit", package: "MagicKit")
            ]),
        .testTarget(
            name: "MagicSyncTests",
            dependencies: ["MagicSync"]),
    ]
)
