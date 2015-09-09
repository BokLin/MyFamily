//
//  MFTaskModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFUser_TaskModel;

@interface MFTaskModel : MFBaseModel

@property (nonatomic) int64_t taskID;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSString * taskType;
@property (nonatomic, retain) MFUser_TaskModel *user_task;

@end
