//
//  Global_Variables.h
//  MyFamily
//
//  Created by EvenTouch on 15/8/31.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#ifndef MyFamily_Global_Variables_h
#define MyFamily_Global_Variables_h

#define SCREEN_RECT [[UIScreen mainScreen]bounds]

#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width

#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height

#define IS_IPAD [[UIScreen mainScreen ]bounds].size.height >= 768
#define IS_IPHONE_5 [[UIScreen mainScreen ]bounds].size.height == 568
#define IS_IPHONE_4 [[UIScreen mainScreen ]bounds].size.height == 480

#define KEYWINDOW [[[UIApplication sharedApplication]windows]objectAtIndex:0]

#define IOSVersion [[UIDevice currentDevice]systemVersion].floatValue

#define IOS7 [[[UIDevice currentDevice] systemVersion]floatValue]>=7
#define IOS8 [[[UIDevice currentDevice] systemVersion]floatValue]>=8


#endif
