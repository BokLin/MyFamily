//
//  MFNotifModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFNotifModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFNotifModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *customDate;
@property (nonatomic) int32_t cycleType;
@property (nonatomic) int64_t holidayID;
@property (nonatomic) BOOL isCycle;
@property (nonatomic) BOOL isHoliday;
@property (nonatomic) BOOL isLunar;
@property (nullable, nonatomic, retain) NSString *name;
@property (nonatomic) int64_t notifID;
@property (nonatomic) int32_t priority;
@property (nullable, nonatomic, retain) NSString *remark;
@property (nonatomic) NSTimeInterval x_createDate;
@property (nonatomic) NSTimeInterval x_deleteDate;
@property (nullable, nonatomic, retain) NSString *x_device;
@property (nonatomic) BOOL x_invalid;
@property (nonatomic) BOOL x_isDefault;
@property (nonatomic) BOOL x_isDelete;
@property (nonatomic) BOOL x_isSync;
@property (nullable, nonatomic, retain) NSString *x_remark;
@property (nonatomic) int64_t x_rowID;
@property (nonatomic) NSTimeInterval x_updateDate;
@property (nonatomic) int64_t x_userID_create;
@property (nonatomic) int64_t x_userID_delete;
@property (nonatomic) int64_t x_userID_update;
@property (nullable, nonatomic, retain) NSString *x_version;
@property (nullable, nonatomic, retain) NSSet<MFUser_NotifModel *> *user_notifs;

@end

@interface MFNotifModel (CoreDataGeneratedAccessors)

- (void)addUser_notifsObject:(MFUser_NotifModel *)value;
- (void)removeUser_notifsObject:(MFUser_NotifModel *)value;
- (void)addUser_notifs:(NSSet<MFUser_NotifModel *> *)values;
- (void)removeUser_notifs:(NSSet<MFUser_NotifModel *> *)values;

@end

NS_ASSUME_NONNULL_END
