//
//  MFUser_NoteModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFNoteGroupModel, MFNoteModel, MFUserModel;

@interface MFUser_NoteModel : MFBaseModel

@property (nonatomic) int64_t noteGroupID;
@property (nonatomic) int64_t noteID;
@property (nonatomic) int64_t user_noteID;
@property (nonatomic) int64_t userID;
@property (nonatomic, retain) MFNoteModel *note;
@property (nonatomic, retain) MFNoteGroupModel *noteGroup;
@property (nonatomic, retain) MFUserModel *user;

@end
