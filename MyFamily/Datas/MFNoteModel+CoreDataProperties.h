//
//  MFNoteModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFNoteModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFNoteModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *content;
@property (nullable, nonatomic, retain) NSString *imageUrl;
@property (nullable, nonatomic, retain) NSString *name;
@property (nonatomic) int64_t noteID;
@property (nonatomic) int32_t noteType;
@property (nullable, nonatomic, retain) NSString *remark;
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
@property (nullable, nonatomic, retain) NSSet<MFUser_NoteModel *> *user_notes;

@end

@interface MFNoteModel (CoreDataGeneratedAccessors)

- (void)addUser_notesObject:(MFUser_NoteModel *)value;
- (void)removeUser_notesObject:(MFUser_NoteModel *)value;
- (void)addUser_notes:(NSSet<MFUser_NoteModel *> *)values;
- (void)removeUser_notes:(NSSet<MFUser_NoteModel *> *)values;

@end

NS_ASSUME_NONNULL_END
