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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test7/lwk.xcframework.zip", checksum: "c67d64d7bb7914e809290d24538df54826c1d8bf2bb3f9301d8254b37631af26"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
