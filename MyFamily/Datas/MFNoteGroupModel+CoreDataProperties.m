//
//  MFNoteGroupModel+CoreDataProperties.m
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFNoteGroupModel+CoreDataProperties.h"

@implementation MFNoteGroupModel (CoreDataProperties)

@dynamic name;
@dynamic noteGroupID;
@dynamic remark;
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
@dynamic user_noteGroups;
@dynamic user_notes;

@end
