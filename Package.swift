// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "salesforce-marketing-cloud",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MarketingCloudSDK",
            targets: ["MarketingCloudSDK"]),
        .library(name: "MarketingCloudResources", targets: ["MarketingCloudResources"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "MarketingCloudResources",
            path: "Sources/",
            resources: [
                .copy("MarketingCloudSDK/MarketingCloudSDK.bundle/"),
            ]
        ),
        .binaryTarget(name: "MarketingCloudSDK", path: "MarketingCloudSDK/MarketingCloudSDK.xcframework"),
    ]
)

