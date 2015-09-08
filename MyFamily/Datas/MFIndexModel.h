//
//  MFIndexModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MFIndexModel : NSManagedObject

@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic) int64_t rowID;
@property (nonatomic) int64_t t_holiday;
@property (nonatomic) int64_t t_memo;
@property (nonatomic) int64_t t_note;
@property (nonatomic) int64_t t_noteCategory;
@property (nonatomic) int64_t t_noteGroup;
@property (nonatomic) int64_t t_person;
@property (nonatomic) int64_t t_region;
@property (nonatomic) int64_t t_relation;
@property (nonatomic) int64_t t_user;
@property (nonatomic) int64_t t_user_memo;
@property (nonatomic) int64_t t_user_note;
@property (nonatomic) int64_t t_user_noteGroup;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic, retain) NSString * version;

@end
