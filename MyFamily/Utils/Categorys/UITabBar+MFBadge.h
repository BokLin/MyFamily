//
//  UITabBar+MFBadge.h
//  MyFamily
//
//  Created by Ricky Lin on 16/5/23.
//  Copyright © 2016年 Linbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (MFBadge)

- (void)showBadgeOnItemIndex:(int)index; //显示小红点

- (void)hideBadgeOnItemIndex:(int)index; //隐藏小红点

@end
