# RVSColorPicker

[![Build Status](https://travis-ci.org/paulemmanuel-garcia/RVSColorPicker.svg?branch=master)](https://travis-ci.org/paulemmanuel-garcia/RVSColorPicker)
[![CocoaPods](https://img.shields.io/cocoapods/v/RVSColorPicker.svg)](https://cocoapods.org/pods/RVSColorPicker)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/l/RVSColorPicker.svg)](https://github.com/paulemmanuel-garcia/RVSColorPicker)
[![CocoaPods](https://img.shields.io/cocoapods/p/RVSColorPicker.svg)](https://github.com/paulemmanuel-garcia/RVSColorPicker)

RVSColorPicker is a toolbox to generate and pick color easily with `Objective-c` or `Swift`.

## Installation

`RVSColorPicker` can be installed with [CocoaPods](cocoapods.org). To install it, add ```pod "RVSColorPicker"``` to your `Podfile`.

`RVSColorPicker` is also [Carthage](https://github.com/Carthage/Carthage) compatible. You just need to add ```github "paulemmanuel-garcia/RVSColorPicker"``` to your `Cartfile`.

## Usage

### Import
To use it on your project you need to import the framework.

```objective-c
// Objective-c
#import "RVSColorPicker.h";
```
```swift
// Swift
import RVSColorPicker
```

### Use Generated Colors

You can use it to generate one random color or a palette of random colors. Furthermore, `RVSColorPicker` can generate specific color for white text written on it. You can exclude colors to avoid them during color generation.

##### Use a random color.

```objective-c
// Objective-c
UIColor *generatedColor = [RVSColorGenerator color];
```
```swift
// Swift
let generatedColor = ColorGenerator.color()
```

##### Use a random color for white text.  

```objective-c
// Objective-c
UIColor *generatedColor = [RVSColorGenerator colorForWhiteText];
```
```swift
// Swift
let generatedColor = ColorGenerator.colorForWhiteText()
```

##### Use a random colors palette
```objective-c
// Objective-c
NSArray<UIColor *> *generatedColor = [RVSColorGenerator colorsWithCount:15];
```
```swift
// Swift
let generatedColor = ColorGenerator.colors(with: 5)
```

##### Use a random colors palette and exclude colors
```objective-c
// Objective-c
NSArray<UIColor *> *excludedColors = @[[UIColor colorWithHue:0.9], [UIColor colorWithHue:0.91], /* ... */[UIColor colorWithHue:1]];
NSArray<UIColor *> *generatedColor = [RVSColorGenerator colorsWithCount:15 withExcludedColors:excludedColors];
```
```swift
// Swift
let excludedColors = [Color(withHue:0.9), /* ... */, Color(withHue:1.0)]
let generatedColor = ColorGenerator.colors(with: 15, excluded:excludedColors)
```

## What's next

- More choice for color generation (saturation, brightness)
- Color association
- A real (UI) Color Picker

## Documentation

## License

`RVSColorPicker` is available under the MIT license. See the LICENSE file for more info.
