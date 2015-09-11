//
//  MFRequestHelper.h
//  MyFamily
//
//  Created by EvenTouch on 15/8/28.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MFUserModel.h"
#import "MFPersonModel.h"

@interface MFRequestHelper : NSObject

@property (nonatomic) NSInteger dataChangedCount;

+ (MFRequestHelper *)shareInstance;

- (void)setUser:(MFUserModel *)model;
- (MFUserModel *)user;

- (void)setPerson:(MFPersonModel *)model;
- (MFPersonModel *)person;

@end
