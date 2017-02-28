//
//  MFUser_NoteModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFUser_NoteModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUser_NoteModel (CoreDataProperties)

@property (nonatomic) int64_t noteGroupID;
@property (nonatomic) int64_t noteID;
@property (nonatomic) int64_t user_noteID;
@property (nonatomic) int64_t userID;
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
@property (nullable, nonatomic, retain) MFNoteModel *note;
@property (nullable, nonatomic, retain) MFNoteGroupModel *noteGroup;
@property (nullable, nonatomic, retain) MFUserModel *user;

@end

NS_ASSUME_NONNULL_END
