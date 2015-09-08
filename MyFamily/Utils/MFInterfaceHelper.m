//
//  MFInterfaceHelper.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/1.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFInterfaceHelper.h"

#import "Globals.h"

@implementation MFInterfaceHelper
{
    
}

+ (MFInterfaceHelper *)shareInstance{
    static MFInterfaceHelper *_interface = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _interface = [[MFInterfaceHelper alloc]init];
    });
    return _interface;
}


@end
