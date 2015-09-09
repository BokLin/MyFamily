//
//  MFUser_MessageModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFMessageModel, MFUserModel;

@interface MFUser_MessageModel : MFBaseModel

@property (nonatomic) int64_t userID;
@property (nonatomic) int64_t messageID;
@property (nonatomic) int64_t user_messageID;
@property (nonatomic, retain) MFMessageModel *message;
@property (nonatomic, retain) MFUserModel *user;

@end
