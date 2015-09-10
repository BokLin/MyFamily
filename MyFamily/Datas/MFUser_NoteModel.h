//
//  MFUser_NoteModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFNoteGroupModel, MFNoteModel, MFUserModel;

@interface MFUser_NoteModel : NSManagedObject

@property (nonatomic) int64_t noteGroupID;
@property (nonatomic) int64_t noteID;
@property (nonatomic) int64_t user_noteID;
@property (nonatomic) int64_t userID;
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
@property (nonatomic, retain) MFNoteModel *note;
@property (nonatomic, retain) MFNoteGroupModel *noteGroup;
@property (nonatomic, retain) MFUserModel *user;

@end
