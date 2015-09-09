//
//  MFNoteModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFUser_NoteModel;

@interface MFNoteModel : MFBaseModel

@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSString * imageUrl;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t noteID;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic, retain) NSString * title;
@property (nonatomic) int64_t userNoteID;
@property (nonatomic) int32_t noteType;
@property (nonatomic, retain) MFUser_NoteModel *userNote;

@end
