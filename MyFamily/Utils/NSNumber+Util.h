//
//  NSNumber+Util.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/2.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSNumber (MFNumberUtil)

/**
 返回对应的整数
 **/
- (NSString *)c;
/**
 返回对应的小数
 **/
- (NSString *)f;
/**
 返回对应x位数的小数 0 <= x <= 6
 **/
- (NSString *)f:(int)l;
/**
 返回对应 Bool类型 1 = YES else = NO
 **/
- (NSString *)b;

@end
