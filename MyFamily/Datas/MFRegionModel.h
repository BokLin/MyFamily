//
//  MFRegionModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFRegionModel;

@interface MFRegionModel : NSManagedObject

@property (nonatomic) int32_t level;
@property (nonatomic, retain) NSString * region_city;
@property (nonatomic, retain) NSString * region_county;
@property (nonatomic, retain) NSString * region_province;
@property (nonatomic) int64_t regionID;
@property (nonatomic) int64_t regionID_uplevel;
@property (nonatomic) NSTimeInterval x_createDate;
@property (nonatomic) NSTimeInterval x_deleteDate;
@property (nonatomic, retain) NSString * x_device;
@property (nonatomic) BOOL x_invalid;
@property (nonatomic) BOOL x_isDefault;
@property (nonatomic) BOOL x_isDelete;
@property (nonatomic, retain) NSString * x_remark;
@property (nonatomic) int64_t x_rowID;
@property (nonatomic) NSTimeInterval x_updateDate;
@property (nonatomic) int64_t x_userID_create;
@property (nonatomic) int64_t x_userID_delete;
@property (nonatomic) int64_t x_userID_update;
@property (nonatomic, retain) NSString * x_version;
@property (nonatomic) BOOL x_isSync;
@property (nonatomic, retain) NSSet *region_downlevel;
@property (nonatomic, retain) MFRegionModel *region_uplevel;
@end

@interface MFRegionModel (CoreDataGeneratedAccessors)

- (void)addRegion_downlevelObject:(MFRegionModel *)value;
- (void)removeRegion_downlevelObject:(MFRegionModel *)value;
- (void)addRegion_downlevel:(NSSet *)values;
- (void)removeRegion_downlevel:(NSSet *)values;

@end
