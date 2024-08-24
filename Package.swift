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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test6/lwk.xcframework.zip", checksum: "cef4755a3d35c83010ad3f0ce3b293a02e0f0d438fa0cb19c343eb51ec84c08b"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
