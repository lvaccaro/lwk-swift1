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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test2/lwk.xcframework.zip", checksum: "0437b592b8d1183c7cd0f59fbec9317120b0fb571875a67a94bb4ff381804011"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
