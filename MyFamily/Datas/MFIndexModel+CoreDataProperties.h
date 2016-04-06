//
//  MFIndexModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFIndexModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFIndexModel (CoreDataProperties)

@property (nonatomic) int64_t t_holiday;
@property (nonatomic) int64_t t_message;
@property (nonatomic) int64_t t_note;
@property (nonatomic) int64_t t_noteCategory;
@property (nonatomic) int64_t t_noteGroup;
@property (nonatomic) int64_t t_notif;
@property (nonatomic) int64_t t_person;
@property (nonatomic) int64_t t_region;
@property (nonatomic) int64_t t_relation;
@property (nonatomic) int64_t t_task;
@property (nonatomic) int64_t t_user;
@property (nonatomic) int64_t t_user_message;
@property (nonatomic) int64_t t_user_note;
@property (nonatomic) int64_t t_user_noteGroup;
@property (nonatomic) int64_t t_user_notif;
@property (nonatomic) int64_t t_user_task;
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

@end

NS_ASSUME_NONNULL_END
