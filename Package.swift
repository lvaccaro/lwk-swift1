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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/test5/lwk.xcframework.zip", checksum: "801f54f654f11df352c91d8d550d66e4fbe1aeb38814a1697f5bce40e8bb243c"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
