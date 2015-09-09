//
//  MFUserModel.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
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
@dynamic person;
@dynamic user_noteGroups;
@dynamic user_notes;
@dynamic user_notifs;
@dynamic user_tasks;
@dynamic user_messages;

@end
