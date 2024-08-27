// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk_bindings",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "LiquidWalletKit", targets: ["lwkFFI", "LiquidWalletKit"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test12/lwkFFI.xcframework.zip", checksum: "29b51c5f1d434048926d1a6cb18fc652f96c16c363fcfb9374f59cddd15f2e69"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
