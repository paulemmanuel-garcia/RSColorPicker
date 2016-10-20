# RSColorPicker

[![Build Status](https://travis-ci.org/paulemmanuel-garcia/RSColorPicker.svg?branch=master)](https://travis-ci.org/paulemmanuel-garcia/RSColorPicker)

RSColorPicker is a toolbox to generate and pick color easily with `Objective-c` or `Swift`.

## Installation


## Usage

### Import
To use it on your project you need to import the framework.

```objective-c
// Objective-c
#import "RSColorPicker.h";
```
```swift
// Swift
import RSColorPicker
```

### Use Generated Colors

You can use it to generate one random color or a palette of random colors. Furthermore, `RSColorPicker` can generate specific color for white text written on it. You can exclude colors to avoid them during color generation.

##### Use a random color.

```objective-c
// Objective-c
UIColor *generatedColor = [RSColorGenerator color];
```
```swift
// Swift
let generatedColor = ColorGenerator.color()
```

##### Use a random color for white text.  

```objective-c
// Objective-c
UIColor *generatedColor = [RSColorGenerator colorForWhiteText];
```
```swift
// Swift
let generatedColor = ColorGenerator.colorForWhiteText()
```

##### Use a random colors palette
```objective-c
// Objective-c
NSArray<UIColor *> *generatedColor = [RSColorGenerator colorsWithCount:15];
```
```swift
// Swift
let generatedColor = ColorGenerator.colors(with: 5)
```

##### Use a random colors palette and exclude colors
```objective-c
// Objective-c
NSArray<UIColor *> *excludedColors = @[[UIColor colorWithHue:0.9], [UIColor colorWithHue:0.91], /* ... */[UIColor colorWithHue:1]];
NSArray<UIColor *> *generatedColor = [RSColorGenerator colorsWithCount:15 withExcludedColors:excludedColors];
```
```swift
// Swift
let excludedColors = [Color(withHue:0.9), /* ... */, Color(withHue:1.0)]
let generatedColor = ColorGenerator.colors(with: 15, excluded:excludedColors)
```

## What's next

- More choice for color generation (saturation, brightness)
- Color association
- A real Color Picker

## Documentation

## License

`RSColorPicker` is available under the MIT license. See the LICENSE file for more info.
