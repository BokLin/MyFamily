//
//  MFNoteGroupModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFUser_NoteGroupModel, MFUser_NoteModel;

@interface MFNoteGroupModel : MFBaseModel

@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t noteGroupID;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t user_NoteGroupID;
@property (nonatomic, retain) NSSet *user_note;
@property (nonatomic, retain) MFUser_NoteGroupModel *userNoteGroup;
@end

@interface MFNoteGroupModel (CoreDataGeneratedAccessors)

- (void)addUser_noteObject:(MFUser_NoteModel *)value;
- (void)removeUser_noteObject:(MFUser_NoteModel *)value;
- (void)addUser_note:(NSSet *)values;
- (void)removeUser_note:(NSSet *)values;

@end
