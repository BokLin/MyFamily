//
//  MFUser_MemoModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFMemoModel, MFUserModel;

@interface MFUser_MemoModel : NSManagedObject

@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic) int64_t memoID;
@property (nonatomic) int64_t rowID;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t user_memoID;
@property (nonatomic) int64_t userID;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) MFMemoModel *memo;
@property (nonatomic, retain) MFUserModel *user;

@end
