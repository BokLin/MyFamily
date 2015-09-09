//
//  MFUserModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFPersonModel, MFUser_MemoModel, MFUser_NoteGroupModel, MFUser_NoteModel, MFUser_TaskModel;

@interface MFUserModel : MFBaseModel

@property (nonatomic, retain) NSString * account;
@property (nonatomic) int32_t activity;
@property (nonatomic, retain) NSString * nickName;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * password_md5;
@property (nonatomic) int64_t personID;
@property (nonatomic) int64_t userID;
@property (nonatomic, retain) MFPersonModel *person;
@property (nonatomic, retain) NSSet *user_notifs;
@property (nonatomic, retain) NSSet *user_noteGroups;
@property (nonatomic, retain) NSSet *user_notes;
@property (nonatomic, retain) NSSet *user_tasks;
@end

@interface MFUserModel (CoreDataGeneratedAccessors)

- (void)addUser_notifsObject:(MFUser_MemoModel *)value;
- (void)removeUser_notifsObject:(MFUser_MemoModel *)value;
- (void)addUser_notifs:(NSSet *)values;
- (void)removeUser_notifs:(NSSet *)values;

- (void)addUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)removeUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)addUser_noteGroups:(NSSet *)values;
- (void)removeUser_noteGroups:(NSSet *)values;

- (void)addUser_notesObject:(MFUser_NoteModel *)value;
- (void)removeUser_notesObject:(MFUser_NoteModel *)value;
- (void)addUser_notes:(NSSet *)values;
- (void)removeUser_notes:(NSSet *)values;

- (void)addUser_tasksObject:(MFUser_TaskModel *)value;
- (void)removeUser_tasksObject:(MFUser_TaskModel *)value;
- (void)addUser_tasks:(NSSet *)values;
- (void)removeUser_tasks:(NSSet *)values;

@end
