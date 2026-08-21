// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationMintegralAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationMintegralAdapter",
            targets: ["AppLovinMediationMintegralAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.7")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mintegral-adapter/AppLovinMediationMintegralAdapter-8.1.7.0.0.zip",
            checksum: "0d51cb65803a28af7f9adfd99292ce4d82dc85988909fc7c635e421e81c1a4b5"
        )
    ]
)
