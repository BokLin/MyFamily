//
//  MFMessageModel+CoreDataProperties.m
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFMessageModel+CoreDataProperties.h"

@implementation MFMessageModel (CoreDataProperties)

@dynamic content;
@dynamic isRead;
@dynamic messageID;
@dynamic messageType;
@dynamic title;
@dynamic x_createDate;
@dynamic x_deleteDate;
@dynamic x_device;
@dynamic x_invalid;
@dynamic x_isDefault;
@dynamic x_isDelete;
@dynamic x_isSync;
@dynamic x_remark;
@dynamic x_rowID;
@dynamic x_updateDate;
@dynamic x_userID_create;
@dynamic x_userID_delete;
@dynamic x_userID_update;
@dynamic x_version;
@dynamic user_messages;

@end
