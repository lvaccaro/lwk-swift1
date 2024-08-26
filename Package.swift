// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk-bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "Lwk", targets: ["lwkFFI", "Lwk"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test8/lwk.xcframework.zip", checksum: "https://github.com/lvaccaro/lwk-swift1/releases/download/build8/lwk.xcframework.zip"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
