# NSTimer-CountDownBlock

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
