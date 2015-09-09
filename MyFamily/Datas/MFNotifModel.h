//
//  MFNotifModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFUser_MemoModel;

@interface MFNotifModel : MFBaseModel

@property (nonatomic, retain) NSString * customDate;
@property (nonatomic) int32_t cycleType;
@property (nonatomic) int64_t holidayID;
@property (nonatomic) BOOL isCycle;
@property (nonatomic) BOOL isHoliday;
@property (nonatomic) BOOL isLunar;
@property (nonatomic) int64_t notifID;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int32_t priority;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t user_notifID;
@property (nonatomic, retain) MFUser_MemoModel *user_notif;

@end
