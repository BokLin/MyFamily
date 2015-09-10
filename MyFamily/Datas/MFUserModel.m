//
//  MFUserModel.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFUserModel.h"
#import "MFPersonModel.h"
#import "MFUser_MessageModel.h"
#import "MFUser_NoteGroupModel.h"
#import "MFUser_NoteModel.h"
#import "MFUser_NotifModel.h"
#import "MFUser_TaskModel.h"


@implementation MFUserModel

@dynamic account;
@dynamic activity;
@dynamic nickName;
@dynamic password;
@dynamic password_md5;
@dynamic personID;
@dynamic userID;
@dynamic x_createDate;
@dynamic x_deleteDate;
@dynamic x_device;
@dynamic x_invalid;
@dynamic x_isDefault;
@dynamic x_isDelete;
@dynamic x_remark;
@dynamic x_rowID;
@dynamic x_updateDate;
@dynamic x_userID_create;
@dynamic x_userID_delete;
@dynamic x_userID_update;
@dynamic x_version;
@dynamic x_isSync;
@dynamic person;
@dynamic user_messages;
@dynamic user_noteGroups;
@dynamic user_notes;
@dynamic user_notifs;
@dynamic user_tasks;

@end
