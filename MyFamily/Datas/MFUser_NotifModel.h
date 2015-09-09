//
//  MFUser_NotifModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFNotifModel, MFUserModel;

@interface MFUser_NotifModel : MFBaseModel

@property (nonatomic) int64_t notifID;
@property (nonatomic) int64_t user_notifID;
@property (nonatomic) int64_t userID;
@property (nonatomic, retain) MFNotifModel *notif;
@property (nonatomic, retain) MFUserModel *user;

@end
