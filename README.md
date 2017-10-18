# Bumper

[![Version](https://img.shields.io/cocoapods/v/Bumper.svg?style=flat)](http://cocoapods.org/pods/Bumper)
[![License](https://img.shields.io/cocoapods/l/Bumper.svg?style=flat)](https://github.com/eddies5/Bumper/blob/master/LICENSE)

## Overview

Bumper detects the version number stored in the Info.plist under the `CFBundleShortVersionString` key for increases. Bumper calls your code when and where you want when it detects a version bump. Bumper's completion block will only be called once per app upgrade. Bumper's great for "New Features" views on app upgrades.

[Apple's Version Numbering Conventions](https://developer.apple.com/library/content/technotes/tn2420/_index.html#//apple_ref/doc/uid/DTS40016603-CH1-NUMBERING_CONVENTIONS) are the rules followed to detect version bumps.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first. Run the app once to install the example app on your simulator or device. Then in the General settings section of the Bumper_Example target, increase the Version number. Run the app again and see Bumper execute.

## Installation

Bumper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Bumper'
```

## Usage

### Setup

Place `Bumper.launch()` in your AppDelegate:

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    Bumper.launch()
    ...
}
```

### Execution

```swift
Bumper.tryToExecute {
    ...
}
```

## Contributors

Eddie Saenz ([@eddies5](https://twitter.com/eddies5))

## License

Bumper is available under the MIT license. See the [LICENSE](https://github.com/eddies5/Bumper/blob/master/LICENSE) file for more info.
