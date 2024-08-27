// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "LiquidWalletKit", targets: ["lwkFFI", "LiquidWalletKit"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test11/lwkFFI.xcframework.zip", checksum: "b86758f4f2cee6e33c229049c5e074eff262640371375942bc08b52b80b9f928"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
