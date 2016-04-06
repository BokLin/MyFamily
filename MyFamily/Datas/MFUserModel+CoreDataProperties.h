//
//  MFUserModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFUserModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFUserModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *account;
@property (nonatomic) int32_t activity;
@property (nullable, nonatomic, retain) NSString *nickName;
@property (nullable, nonatomic, retain) NSString *password;
@property (nullable, nonatomic, retain) NSString *password_md5;
@property (nonatomic) int64_t personID;
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
@property (nullable, nonatomic, retain) MFPersonModel *person;
@property (nullable, nonatomic, retain) NSSet<MFUser_MessageModel *> *user_messages;
@property (nullable, nonatomic, retain) NSSet<MFUser_NoteGroupModel *> *user_noteGroups;
@property (nullable, nonatomic, retain) NSSet<MFUser_NoteModel *> *user_notes;
@property (nullable, nonatomic, retain) NSSet<MFUser_NotifModel *> *user_notifs;
@property (nullable, nonatomic, retain) NSSet<MFUser_TaskModel *> *user_tasks;

@end

@interface MFUserModel (CoreDataGeneratedAccessors)

- (void)addUser_messagesObject:(MFUser_MessageModel *)value;
- (void)removeUser_messagesObject:(MFUser_MessageModel *)value;
- (void)addUser_messages:(NSSet<MFUser_MessageModel *> *)values;
- (void)removeUser_messages:(NSSet<MFUser_MessageModel *> *)values;

- (void)addUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)removeUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)addUser_noteGroups:(NSSet<MFUser_NoteGroupModel *> *)values;
- (void)removeUser_noteGroups:(NSSet<MFUser_NoteGroupModel *> *)values;

- (void)addUser_notesObject:(MFUser_NoteModel *)value;
- (void)removeUser_notesObject:(MFUser_NoteModel *)value;
- (void)addUser_notes:(NSSet<MFUser_NoteModel *> *)values;
- (void)removeUser_notes:(NSSet<MFUser_NoteModel *> *)values;

- (void)addUser_notifsObject:(MFUser_NotifModel *)value;
- (void)removeUser_notifsObject:(MFUser_NotifModel *)value;
- (void)addUser_notifs:(NSSet<MFUser_NotifModel *> *)values;
- (void)removeUser_notifs:(NSSet<MFUser_NotifModel *> *)values;

- (void)addUser_tasksObject:(MFUser_TaskModel *)value;
- (void)removeUser_tasksObject:(MFUser_TaskModel *)value;
- (void)addUser_tasks:(NSSet<MFUser_TaskModel *> *)values;
- (void)removeUser_tasks:(NSSet<MFUser_TaskModel *> *)values;

@end

NS_ASSUME_NONNULL_END
