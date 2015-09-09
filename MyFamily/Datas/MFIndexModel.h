//
//  MFIndexModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"


@interface MFIndexModel : MFBaseModel

@property (nonatomic) int64_t t_holiday;
@property (nonatomic) int64_t t_notif;
@property (nonatomic) int64_t t_note;
@property (nonatomic) int64_t t_noteCategory;
@property (nonatomic) int64_t t_noteGroup;
@property (nonatomic) int64_t t_person;
@property (nonatomic) int64_t t_region;
@property (nonatomic) int64_t t_relation;
@property (nonatomic) int64_t t_user;
@property (nonatomic) int64_t t_user_notif;
@property (nonatomic) int64_t t_user_note;
@property (nonatomic) int64_t t_user_noteGroup;
@property (nonatomic) int64_t t_message;
@property (nonatomic) int64_t t_user_task;
@property (nonatomic) int64_t t_task;

@end
