# SACountingLabel

![language](https://img.shields.io/badge/Language-%20Swift%20-orange.svg)
![CI Status](https://img.shields.io/badge/build-passing-brightgreen.svg)
[![Version](https://img.shields.io/cocoapods/v/SACountingLabel.svg?style=flat)](http://cocoapods.org/pods/SACountingLabel)
[![License](https://img.shields.io/cocoapods/l/SACountingLabel.svg?style=flat)](http://cocoapods.org/pods/SACountingLabel)
[![Platform](https://img.shields.io/cocoapods/p/SACountingLabel.svg?style=flat)](http://cocoapods.org/pods/SACountingLabel)

SACountingLabel is a highly customizable animated UILabel that can count, inspired by Tim Gostony's [UICountingLabel](https://github.com/dataxpress/UICountingLabel). Originally created as an animated UI component for a game to display scores, SACountingLabel supports the use of various formats such as percentages, currencies and multiple decimal places. It can also be modified to use different animation modes such as linear, ease in, ease out as well as ease in and out. 

## Installation

SACountingLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod "SACountingLabel"
```

And then run:

`$ pod install`

#### Manual Installation
To manually install SACountingLabel, simply add `SACountingLabel.swift` to your project.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Setup

Creating a SACountingLabel is the same as creating a UILabel:

```
let label = SACountingLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
```

Or add it to your storyboard or XIB file and set the class type to `SACountingLabel` instead of `UILabel`.

## Usage

This is the general syntax for counting from a start value to an end value for a specified counting and animation style.

`label.countFrom(0, to: 100, withDuration: 1.0, andAnimationType: type, andCountingType: .Int)`

#### Start Value
The start value is a `float` value that the counting begins from.

#### End Value
The end value is a `float` value where the counting ends.

#### Duration
The duration is a `float` value for the length of the animation in seconds.

#### Animation Type
There are four animation types - linear, ease in, ease out, as well as ease in and ease out.
##### `.Linear`
Counts from the start value to the end value at a constant speed.
##### `.EaseIn`
Starts counting from the start value slowly and speeds up as it approaches the end value.
##### `.EaseOut`
Starts counting from the start value quickly and slows down as it approaches the end value.
##### `.EaseInOut`
Starts counting from the start value slowly, speeds up towards the middle, and slows down again as it approaches the end value.

#### Counting Type
There are three counting types - integer, floating point and custom.

##### `.Int`
This will result in counting by integers.
`0, 1, 2,..., 100`

##### `.Float`
This will result in counting using floating points, with a default of 2 decimal places.
`0.00, 0.01, 0.02,..., 100`

##### `.Custom`
This allows you to specify a custom format for the counting. You will have to set the format like this:

`label.format = "%.1f%%"`

This will result in `0.0%, 0.1%, 0.2%,..., 100%`.

Formats like `"$%.2f"` and `"%i points"` can be used as well.

## Author

Sudeep Agarwal, sudeep135@gmail.com

## License

SACountingLabel is available under the MIT license. See the LICENSE file for more info.
