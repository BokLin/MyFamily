//
//  MFNoteModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFUser_NoteModel;

@interface MFNoteModel : NSManagedObject

@property (nonatomic, retain) NSString * content;
@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic, retain) NSString * imageUrl;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t noteID;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t rowID;
@property (nonatomic, retain) NSString * title;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic) int64_t userNoteID;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) MFUser_NoteModel *userNote;

@end
