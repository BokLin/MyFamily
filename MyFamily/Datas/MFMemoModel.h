//
//  MFMemoModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFUser_MemoModel;

@interface MFMemoModel : NSManagedObject

@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic, retain) NSString * customDate;
@property (nonatomic) int32_t cycleType;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) int64_t holidayID;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isCycle;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic) BOOL isHoliday;
@property (nonatomic) BOOL isLunar;
@property (nonatomic) int64_t memoID;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int32_t priority;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t rowID;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic) int64_t userMemoID;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) MFUser_MemoModel *userMemo;

@end
