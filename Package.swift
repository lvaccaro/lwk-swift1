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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test8/lwk.xcframework.zip", checksum: "5d5a5f7db6eed250c65f0eee813cee1ed8d8c22d26ed58d47c95e2b96c51551a"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
