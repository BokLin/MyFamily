//
//  NSString+Util.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/2.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "NSString+Util.h"

@implementation NSString (MFNSStringUtil)

- (NSString *)c
{
    if (self.length == 0) {
        return @"-";
    }
    return self;
}

@end
