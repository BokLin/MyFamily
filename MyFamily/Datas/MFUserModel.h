//
//  MFUserModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFPersonModel, MFUser_MemoModel, MFUser_NoteGroupModel, MFUser_NoteModel;

@interface MFUserModel : NSManagedObject

@property (nonatomic, retain) NSString * account;
@property (nonatomic) int32_t activity;
@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic, retain) NSString * nickName;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * password_md5;
@property (nonatomic) int64_t personID;
@property (nonatomic) int64_t rowID;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) MFPersonModel *person;
@property (nonatomic, retain) NSSet *user_Memos;
@property (nonatomic, retain) NSSet *user_NoteGroups;
@property (nonatomic, retain) NSSet *user_Notes;
@end

@interface MFUserModel (CoreDataGeneratedAccessors)

- (void)addUser_MemosObject:(MFUser_MemoModel *)value;
- (void)removeUser_MemosObject:(MFUser_MemoModel *)value;
- (void)addUser_Memos:(NSSet *)values;
- (void)removeUser_Memos:(NSSet *)values;

- (void)addUser_NoteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)removeUser_NoteGroupsObject:(MFUser_NoteGroupModel *)value;
- (void)addUser_NoteGroups:(NSSet *)values;
- (void)removeUser_NoteGroups:(NSSet *)values;

- (void)addUser_NotesObject:(MFUser_NoteModel *)value;
- (void)removeUser_NotesObject:(MFUser_NoteModel *)value;
- (void)addUser_Notes:(NSSet *)values;
- (void)removeUser_Notes:(NSSet *)values;

@end
