//
//  MFUserModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFPersonModel, MFUser_MessageModel, MFUser_NoteGroupModel, MFUser_NoteModel, MFUser_NotifModel, MFUser_TaskModel;

@interface MFUserModel : NSManagedObject

@property (nonatomic, retain) NSString * account;
@property (nonatomic) int32_t activity;
@property (nonatomic, retain) NSString * nickName;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * password_md5;
@property (nonatomic) int64_t personID;
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
@property (nonatomic, retain) MFPersonModel *person;
@property (nonatomic, retain) NSSet *user_messages;
@property (nonatomic, retain) NSSet *user_noteGroups;
@property (nonatomic, retain) NSSet *user_notes;
@property (nonatomic, retain) NSSet *user_notifs;
@property (nonatomic, retain) NSSet *user_tasks;
@end

@interface MFUserModel (CoreDataGeneratedAccessors)

- (void)addUser_messagesObject:(MFUser_MessageModel *)value;
- (void)removeUser_messagesObject:(MFUser_MessageModel *)value;
- (void)addUser_messages:(NSSet *)values;
- (void)removeUser_messages:(NSSet *)values;

- (void)addUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)removeUser_noteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)addUser_noteGroups:(NSSet *)values;
- (void)removeUser_noteGroups:(NSSet *)values;

- (void)addUser_notesObject:(MFUser_NoteModel *)value;
- (void)removeUser_notesObject:(MFUser_NoteModel *)value;
- (void)addUser_notes:(NSSet *)values;
- (void)removeUser_notes:(NSSet *)values;

- (void)addUser_notifsObject:(MFUser_NotifModel *)value;
- (void)removeUser_notifsObject:(MFUser_NotifModel *)value;
- (void)addUser_notifs:(NSSet *)values;
- (void)removeUser_notifs:(NSSet *)values;

- (void)addUser_tasksObject:(MFUser_TaskModel *)value;
- (void)removeUser_tasksObject:(MFUser_TaskModel *)value;
- (void)addUser_tasks:(NSSet *)values;
- (void)removeUser_tasks:(NSSet *)values;

@end
