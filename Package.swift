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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test/lwk.xcframework.zip", checksum: "0943c5868976328e22f05978761d2c4a815293b42b3a668899e9cfa3af764357"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
