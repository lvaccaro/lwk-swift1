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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test3/lwk.xcframework.zip", checksum: "2aeb68e45fd49847655fb3ccf30c28eb0134ec3324a35575cde71c340fec7f98"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
