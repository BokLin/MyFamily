//
//  MFRequestHelper.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/28.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFRequestHelper.h"

@implementation MFRequestHelper
{
    MFUserModel *_user;
    MFPersonModel *_person;
}

+ (MFRequestHelper *)shareInstance{
    static MFRequestHelper *_request = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _request = [[MFRequestHelper alloc]init];
    });
    return _request;
}

- (void)setUser:(MFUserModel *)model
{
    _user = model;
}

- (MFUserModel *)user
{
    return _user;
}

- (void)setPerson:(MFPersonModel *)model
{
    _person = model;
}

- (MFPersonModel *)person
{
    return _person;
}
@end
