//
//  MFMessageModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFUser_MessageModel;

@interface MFMessageModel : MFBaseModel

@property (nonatomic, retain) NSString * content;
@property (nonatomic) BOOL isRead;
@property (nonatomic) int64_t messageID;
@property (nonatomic) int32_t messageType;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) MFUser_MessageModel *user_message;

@end
