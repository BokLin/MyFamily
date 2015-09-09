//
//  MFUser_NoteGroupModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFNoteGroupModel, MFUserModel;

@interface MFUser_NoteGroupModel : MFBaseModel

@property (nonatomic) int64_t noteGroupID;
@property (nonatomic) int64_t user_noteGroupID;
@property (nonatomic) int64_t userID;
@property (nonatomic, retain) MFNoteGroupModel *noteGroup;
@property (nonatomic, retain) MFUserModel *user;

@end
