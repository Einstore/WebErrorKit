// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "WebError",
    products: [
        .library(name: "WebErrorKit", targets: ["WebErrorKit"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WebErrorKit",
            dependencies: []
        ),
        .testTarget(
            name: "WebErrorKitTests",
            dependencies: [
                "WebErrorKit"
            ]
        )
    ]
)


