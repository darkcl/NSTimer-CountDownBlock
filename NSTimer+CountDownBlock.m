//
//  NSTimer+CountDownBlock.m
//  Facesss
//
//  Created by Yeung Yiu Hung on 14/3/16.
//  Copyright © 2016 Yeung Yiu Hung. All rights reserved.
//

#import "NSTimer+CountDownBlock.h"
#import <objc/runtime.h>
static void * CountDownTimerSecondsToGo = &CountDownTimerSecondsToGo;

@implementation NSTimer (CountDownBlock)

- (void)setSecondsToGo:(NSTimeInterval) property{
    NSNumber *number = [NSNumber numberWithDouble: property];
    objc_setAssociatedObject(self, CountDownTimerSecondsToGo, number , OBJC_ASSOCIATION_RETAIN);
}

- (NSTimeInterval)secondsToGo{
    NSNumber *number = objc_getAssociatedObject(self, CountDownTimerSecondsToGo);
    return [number doubleValue];
}

+ (NSTimer *)countDownTimerWithTimeInterval:(NSTimeInterval)seconds
                             countDownBlock:(void(^)(NSTimeInterval seconds))countDownBlock{
    NSTimer *aTimer = [self scheduledTimerWithTimeInterval:1
                                                    target:self
                                                  selector:@selector(runBlock:)
                                                  userInfo:countDownBlock
                                                   repeats:YES];
    aTimer.secondsToGo = seconds;
    return aTimer;
}

#pragma mark - Private methods

+ (void)runBlock:(NSTimer *)timer
{
    if ([timer.userInfo isKindOfClass:NSClassFromString(@"NSBlock")])
    {
        void (^block)(NSTimeInterval seconds) = timer.userInfo;
        timer.secondsToGo -= 1;
        if (timer.secondsToGo != 0) {
            block(timer.secondsToGo);
        }else{
            block(timer.secondsToGo);
            [timer invalidate];
        }
    }
}

@end
