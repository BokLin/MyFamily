//
//  MFTaskModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFTaskModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFTaskModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *content;
@property (nonatomic) NSTimeInterval endTime;
@property (nonatomic) NSTimeInterval startTime;
@property (nonatomic) int32_t status;
@property (nonatomic) int64_t taskID;
@property (nullable, nonatomic, retain) NSString *taskType;
@property (nullable, nonatomic, retain) NSString *title;
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
@property (nullable, nonatomic, retain) NSSet<MFUser_TaskModel *> *user_tasks;

@end

@interface MFTaskModel (CoreDataGeneratedAccessors)

- (void)addUser_tasksObject:(MFUser_TaskModel *)value;
- (void)removeUser_tasksObject:(MFUser_TaskModel *)value;
- (void)addUser_tasks:(NSSet<MFUser_TaskModel *> *)values;
- (void)removeUser_tasks:(NSSet<MFUser_TaskModel *> *)values;

@end

NS_ASSUME_NONNULL_END
