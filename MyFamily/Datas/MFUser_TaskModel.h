//
//  MFUser_TaskModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFTaskModel, MFUserModel;

@interface MFUser_TaskModel : MFBaseModel

@property (nonatomic) int64_t user_taskID;
@property (nonatomic) int64_t userID;
@property (nonatomic) int64_t taskID;
@property (nonatomic, retain) MFUserModel *user;
@property (nonatomic, retain) MFTaskModel *task;

@end
