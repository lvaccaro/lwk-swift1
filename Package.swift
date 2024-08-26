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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/build9/lwk.xcframework.zip", checksum: "4cef1a23cdb3d5f1e307bef89da41ad4c060ef38edf76f09a24b26eea8bff545"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
