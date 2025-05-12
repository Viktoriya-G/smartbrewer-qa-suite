// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartBrewerTestKit",
    platforms: [
        .iOS(.v15) // 👈 This is what was missing
    ],
    products: [
        .library(
            name: "SmartBrewerTestKit",
            targets: ["SmartBrewerTestKit"]
        ),
    ],
    targets: [
        .target(
            name: "SmartBrewerTestKit",
            dependencies: []
        ),
        .testTarget(
            name: "SmartBrewerTestKitTests",
            dependencies: ["SmartBrewerTestKit"]
        ),
    ]
)

