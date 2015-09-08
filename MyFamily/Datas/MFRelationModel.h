//
//  MFRelationModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFPersonModel;

@interface MFRelationModel : NSManagedObject

@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic) int64_t relationID;
@property (nonatomic) int64_t personID_from;
@property (nonatomic) int64_t personID_to;
@property (nonatomic) int32_t relationType;
@property (nonatomic) int64_t rowID;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) MFPersonModel *person_from;
@property (nonatomic, retain) MFPersonModel *person_to;

@end
