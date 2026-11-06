// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationMintegralAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationMintegralAdapter",
            targets: ["AppLovinMediationMintegralAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.9")
    ],
    targets: [
        .target(
            name: "AppLovinMediationMintegralAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationMintegralAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationMintegralAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mintegral-adapter/AppLovinMediationMintegralAdapter-8.1.9.0.0.zip",
            checksum: "d6d67fb400239bc0ad4c8d3516a53a1dd0ce7bde70b4a5a822446be3b2f7e16a"
        )
    ]
)
