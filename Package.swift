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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift1/releases/download/build9/lwk.xcframework.zip", checksum: "a3f1384b74f453e7a05ef151a3e6d6b7dedd2caf820451bba34998e4e9e5f7de"),
        .target(name: "Lwk", dependencies: ["lwkFFI"]),
    ]
)
