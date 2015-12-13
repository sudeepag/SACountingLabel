# SACountingLabel

![language](https://img.shields.io/badge/Language-%20Swift%20-orange.svg)
![CI Status](https://img.shields.io/badge/build-passing-brightgreen.svg)
[![Version](https://img.shields.io/cocoapods/v/SACountingLabel.svg?style=flat)](http://cocoapods.org/pods/SACountingLabel)
[![License](https://img.shields.io/cocoapods/l/SACountingLabel.svg?style=flat)](http://cocoapods.org/pods/SACountingLabel)
[![Platform](https://img.shields.io/cocoapods/p/SACountingLabel.svg?style=flat)](http://cocoapods.org/pods/SACountingLabel)

SACountingLabel is a highly customizable animated UILabel that can count, inspired by Tim Gostony's [UICountingLabel](https://github.com/dataxpress/UICountingLabel). Originally created as an animated UI component for a game to display scores, SACountingLabel supports the use of various formats such as percentages, currencies and multiple decimal places. It can also be modified to use different animation modes such as linear, ease in, ease out as well as ease in and out. 

<img src="https://cloud.githubusercontent.com/assets/11940172/11767479/9730af98-a1e9-11e5-9a0e-0de09d872051.gif" alt="int" width="320" height="70.5">

<img src="https://cloud.githubusercontent.com/assets/11940172/11767480/98bd0ee2-a1e9-11e5-9192-e2329177164e.gif" alt="float" width="320" height="70.5">

<img src="https://cloud.githubusercontent.com/assets/11940172/11767481/9a729c7a-a1e9-11e5-9d43-98e69026796d.gif" alt="custom" width="320" height="70.5">

## Installation

SACountingLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```swift
pod "SACountingLabel"
```

And then run:

`$ pod install`

#### Manual Installation
To manually install SACountingLabel, simply add `SACountingLabel.swift` to your project.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

Creating a SACountingLabel is the same as creating a UILabel:

```swift
let label = SACountingLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
```

Or add it to your storyboard or XIB file and set the class type to `SACountingLabel` instead of `UILabel`.

This is the general syntax for counting from a start value to an end value for a specified counting and animation style.

```swift
label.countFrom(0, to: 100, withDuration: 1.0, andAnimationType: .EaseIn, andCountingType: .Int)
```

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

<img src="https://cloud.githubusercontent.com/assets/11940172/11767417/ca894fb4-a1e7-11e5-937b-4935a06739f1.gif" alt="linear" width="320" height="70.5">

##### `.EaseIn`
Starts counting from the start value slowly and speeds up as it approaches the end value.

<img src="https://cloud.githubusercontent.com/assets/11940172/11767419/cfa6650e-a1e7-11e5-82b3-8accbc17b5b6.gif" alt="easein" width="320" height="70.5">

##### `.EaseOut`
Starts counting from the start value quickly and slows down as it approaches the end value.

<img src="https://cloud.githubusercontent.com/assets/11940172/11767418/cf99bf16-a1e7-11e5-8a22-9da9fc42c51b.gif" alt="easeout" width="320" height="70.5">


##### `.EaseInOut`
Starts counting from the start value slowly, speeds up towards the middle, and slows down again as it approaches the end value.

<img src="https://cloud.githubusercontent.com/assets/11940172/11767421/d0f75e2c-a1e7-11e5-926d-3d65ee9d6cc9.gif" alt="easeinout" height="70.5">

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

```swift
label.format = "%.1f%%"
```

This will result in `0.0%, 0.1%, 0.2%,..., 100%`.

Formats like `"$%.2f"` and `"%i points"` can be used as well.


## License

Copyright (c) 2015 Sudeep Agarwal and Tim Gostony

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
