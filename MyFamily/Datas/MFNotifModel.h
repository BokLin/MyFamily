//
//  MFNotifModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFUser_NotifModel;

@interface MFNotifModel : NSManagedObject

@property (nonatomic, retain) NSString * customDate;
@property (nonatomic) int32_t cycleType;
@property (nonatomic) int64_t holidayID;
@property (nonatomic) BOOL isCycle;
@property (nonatomic) BOOL isHoliday;
@property (nonatomic) BOOL isLunar;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t notifID;
@property (nonatomic) int32_t priority;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) NSTimeInterval x_createDate;
@property (nonatomic) NSTimeInterval x_deleteDate;
@property (nonatomic, retain) NSString * x_device;
@property (nonatomic) BOOL x_invalid;
@property (nonatomic) BOOL x_isDefault;
@property (nonatomic) BOOL x_isDelete;
@property (nonatomic, retain) NSString * x_remark;
@property (nonatomic) int64_t x_rowID;
@property (nonatomic) NSTimeInterval x_updateDate;
@property (nonatomic) int64_t x_userID_create;
@property (nonatomic) int64_t x_userID_delete;
@property (nonatomic) int64_t x_userID_update;
@property (nonatomic, retain) NSString * x_version;
@property (nonatomic) BOOL x_isSync;
@property (nonatomic, retain) NSSet *user_notifs;
@end

@interface MFNotifModel (CoreDataGeneratedAccessors)

- (void)addUser_notifsObject:(MFUser_NotifModel *)value;
- (void)removeUser_notifsObject:(MFUser_NotifModel *)value;
- (void)addUser_notifs:(NSSet *)values;
- (void)removeUser_notifs:(NSSet *)values;

@end
