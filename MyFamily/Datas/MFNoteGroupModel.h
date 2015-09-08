//
//  MFNoteGroupModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFUser_NoteGroupModel, MFUser_NoteModel;

@interface MFNoteGroupModel : NSManagedObject

@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t noteGroupID;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t rowID;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic) int64_t user_NoteGroupID;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSSet *user_note;
@property (nonatomic, retain) MFUser_NoteGroupModel *userNoteGroup;
@end

@interface MFNoteGroupModel (CoreDataGeneratedAccessors)

- (void)addUser_noteObject:(MFUser_NoteModel *)value;
- (void)removeUser_noteObject:(MFUser_NoteModel *)value;
- (void)addUser_note:(NSSet *)values;
- (void)removeUser_note:(NSSet *)values;

@end
