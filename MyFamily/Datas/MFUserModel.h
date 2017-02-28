//
//  MFUserModel.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFPersonModel, MFUser_MessageModel, MFUser_NoteGroupModel, MFUser_NoteModel, MFUser_NotifModel, MFUser_TaskModel;

NS_ASSUME_NONNULL_BEGIN

@interface MFUserModel : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "MFUserModel+CoreDataProperties.h"
