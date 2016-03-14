# NSTimer-CountDownBlock

[![Version](https://img.shields.io/cocoapods/v/NSTimer+CountDownBlock.svg?style=flat)](http://cocoapods.org/pods/NSTimer+CountDownBlock)
[![License](https://img.shields.io/cocoapods/l/NSTimer+CountDownBlock.svg?style=flat)](http://cocoapods.org/pods/NSTimer+CountDownBlock)
[![Platform](https://img.shields.io/cocoapods/p/NSTimer+CountDownBlock.svg?style=flat)](http://cocoapods.org/pods/NSTimer+CountDownBlock)

## Installation

```ruby
pod 'NSTimer+CountDownBlock'
```

## Usage

```obj-c
#import <NSTimer+CountDownBlock.h>

[NSTimer countDownTimerWithTimeInterval:30
                         countDownBlock:^(NSTimeInterval seconds) {
                             NSLog(@"Remaining seconds :%i", (int)seconds);
                         }];
```
