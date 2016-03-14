//
//  NSTimer+CountDownBlock.h
//  Facesss
//
//  Created by Yeung Yiu Hung on 14/3/16.
//  Copyright © 2016 Yeung Yiu Hung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (CountDownBlock)

@property NSTimeInterval secondsToGo;

+ (NSTimer *)countDownTimerWithTimeInterval:(NSTimeInterval)seconds
                             countDownBlock:(void(^)(NSTimeInterval seconds))countDownBlock;

@end
