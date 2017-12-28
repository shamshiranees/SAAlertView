# SAAlertView

[![CI Status](http://img.shields.io/travis/shamshiranees/SAAlertView.svg?style=flat)](https://travis-ci.org/shamshiranees/SAAlertView)
[![Version](https://img.shields.io/cocoapods/v/SAAlertView.svg?style=flat)](http://cocoapods.org/pods/SAAlertView)
[![License](https://img.shields.io/cocoapods/l/SAAlertView.svg?style=flat)](http://cocoapods.org/pods/SAAlertView)
[![Platform](https://img.shields.io/cocoapods/p/SAAlertView.svg?style=flat)](http://cocoapods.org/pods/SAAlertView)

## ScreenShots

![ScreenShot](https://raw.githubusercontent.com/shamshiranees/SAAlertView/master/Example/SAAlertView/alert.png)
![ScreenShot](https://raw.githubusercontent.com/shamshiranees/SAAlertView/master/Example/SAAlertView/multipleButtons.png)
![ScreenShot](https://raw.githubusercontent.com/shamshiranees/SAAlertView/master/Example/SAAlertView/actionSheet.png)

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
//Alert with title
SAAlertView.alertView("Alert Title")

//Alert with title and message
SAAlertView.alertView("Warning", message: "type you message here")

//Alert with single button action
SAAlertView.alertView("Waring", message: "type your message", buttonTitle: "retry", buttonAction: reload)

//Alert with multiple buttons
SAAlertView.multipleAlertView(title: "Question",message:"select a option",buttonTitles:["a","b","c","d","a","b","c","d"]) { (indexOfButton) in
if indexOfButton == 0{
print("a")
}
else if indexOfButton == 1{
print("b")
}else{

print("button clicked")
}
}

//ActionSheet with multiple buttons
SAAlertView.actionSheet(title: "options",buttonTitles:["a","b","c","d","a","b","c","d"]) { (indexOfButton) in
if indexOfButton == 0{
print("a")
}
else if indexOfButton == 1{
print("b")
}else{

print("button clicked")
}
}
}

```
## Author

shamshir.anees@gmail.com

## License

SAAlertView is available under the MIT license. See the LICENSE file for more info.
