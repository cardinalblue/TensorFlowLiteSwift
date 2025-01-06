// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/cardinalblue/TensorFlowLiteC.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: ["TensorFlowLiteC"]),
    ]
)
