//
//  MFNoteGroupModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFUser_NoteGroupModel, MFUser_NoteModel;

@interface MFNoteGroupModel : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t noteGroupID;
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
@property (nonatomic, retain) NSSet *user_noteGroups;
@property (nonatomic, retain) NSSet *user_notes;
@end

@interface MFNoteGroupModel (CoreDataGeneratedAccessors)

- (void)addUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)removeUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)addUser_noteGroups:(NSSet *)values;
- (void)removeUser_noteGroups:(NSSet *)values;

- (void)addUser_notesObject:(MFUser_NoteModel *)value;
- (void)removeUser_notesObject:(MFUser_NoteModel *)value;
- (void)addUser_notes:(NSSet *)values;
- (void)removeUser_notes:(NSSet *)values;

@end
