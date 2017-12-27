# SAAlertView

[![CI Status](http://img.shields.io/travis/smzranz@gmail.com/SAAlertView.svg?style=flat)](https://travis-ci.org/smzranz@gmail.com/SAAlertView)
[![Version](https://img.shields.io/cocoapods/v/SAAlertView.svg?style=flat)](http://cocoapods.org/pods/SAAlertView)
[![License](https://img.shields.io/cocoapods/l/SAAlertView.svg?style=flat)](http://cocoapods.org/pods/SAAlertView)
[![Platform](https://img.shields.io/cocoapods/p/SAAlertView.svg?style=flat)](http://cocoapods.org/pods/SAAlertView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Swift 3.0
Xcode 8.0

## Installation

SAAlertView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SAAlertView'
```
## Usage
```swift
SAAlertView.alertView("Alert Title")
SAAlertView.alertView("Warning", message: "type you message here")
SAAlertView.alertView("Waring", message: "type your message", buttonTitle: "retry", buttonAction: reload())
```
## Author

shamshir.anees@gmail.com

## License

SAAlertView is available under the MIT license. See the LICENSE file for more info.
