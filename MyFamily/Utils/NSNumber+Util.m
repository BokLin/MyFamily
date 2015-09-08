//
//  NSNumber+Util.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/2.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "NSNumber+Util.h"

@implementation NSNumber (MFNumberUtil)

- (NSString *)c
{
    return [NSString stringWithFormat:@"%d",self.intValue];
}

- (NSString *)f
{
    return [self description];
}

- (NSString *)f:(int)l
{
    if (l <= 1) {
        return [NSString stringWithFormat:@"%.0f",self.floatValue];
    }
    if (l == 1) {
        return [NSString stringWithFormat:@"%.1f",self.floatValue];
    }
    if (l == 3) {
        return [NSString stringWithFormat:@"%.3f",self.floatValue];
    }
    if (l == 4) {
        return [NSString stringWithFormat:@"%.4f",self.floatValue];
    }
    if (l == 5) {
        return [NSString stringWithFormat:@"%.5f",self.floatValue];
    }
    if (l >= 5) {
        return [NSString stringWithFormat:@"%.6f",self.floatValue];
    }
    return [NSString stringWithFormat:@"%.2f",self.floatValue];
}

- (NSString *)b
{
    if (self.intValue == 1) {
        return @"YES";
    }else {
        return @"NO";
    }
}

@end
