// swift-tools-version:5.0
// Managed by ice

import PackageDescription

let package = Package(
    name: "Shout",
    products: [
        .library(name: "Shout", targets: ["Shout"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/BlueSocket", from: "1.0.46"),
        .package(url: "https://github.com/DimaRU/Libssh2Prebuild.git", .branch("master"))
    ],
    targets: [
        .target(name: "Shout", dependencies: ["CSSH", "Socket"]),
        .testTarget(name: "ShoutTests", dependencies: ["Shout"]),
    ]
)
