# AppLovin MAX - iOS Mintegral Mediation Adapter

The AppLovin MAX Mintegral mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Mintegral
   ```
3. Choose **Up to Next Major Version** and pin to the latest adapter version (e.g. `8.1.4.0.0`).
4. Add the `AppLovinMediationMintegralAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Mintegral.git",
        from: "8.1.4.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`MintegralAdSDK`](https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.axon.ai/en/max/ios/overview/integration)
