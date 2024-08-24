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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test4/lwk.xcframework.zip", checksum: "dd62bf8cecd30e6f6362bce4f7041676e5edd9caf895a4d8b2a1d3ba3fd4c949"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
