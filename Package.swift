// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PlomerSwiftSdk",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v11),
        .watchOS(.v4),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PlomerSwiftSdk",
            targets: ["PlomerSwiftSdk"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1")),
        .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: "5.7.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PlomerSwiftSdk",
            dependencies: ["AnyCodable", "Alamofire", ],
            path: "PlomerSwiftSdk/Classes"
        ),
    ]
)
