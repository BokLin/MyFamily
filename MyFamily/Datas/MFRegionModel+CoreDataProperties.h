//
//  MFRegionModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFRegionModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFRegionModel (CoreDataProperties)

@property (nonatomic) int32_t level;
@property (nullable, nonatomic, retain) NSString *region_city;
@property (nullable, nonatomic, retain) NSString *region_county;
@property (nullable, nonatomic, retain) NSString *region_province;
@property (nonatomic) int64_t regionID;
@property (nonatomic) int64_t regionID_uplevel;
@property (nonatomic) NSTimeInterval x_createDate;
@property (nonatomic) NSTimeInterval x_deleteDate;
@property (nullable, nonatomic, retain) NSString *x_device;
@property (nonatomic) BOOL x_invalid;
@property (nonatomic) BOOL x_isDefault;
@property (nonatomic) BOOL x_isDelete;
@property (nonatomic) BOOL x_isSync;
@property (nullable, nonatomic, retain) NSString *x_remark;
@property (nonatomic) int64_t x_rowID;
@property (nonatomic) NSTimeInterval x_updateDate;
@property (nonatomic) int64_t x_userID_create;
@property (nonatomic) int64_t x_userID_delete;
@property (nonatomic) int64_t x_userID_update;
@property (nullable, nonatomic, retain) NSString *x_version;
@property (nullable, nonatomic, retain) NSSet<MFRegionModel *> *region_downlevel;
@property (nullable, nonatomic, retain) MFRegionModel *region_uplevel;

@end

@interface MFRegionModel (CoreDataGeneratedAccessors)

- (void)addRegion_downlevelObject:(MFRegionModel *)value;
- (void)removeRegion_downlevelObject:(MFRegionModel *)value;
- (void)addRegion_downlevel:(NSSet<MFRegionModel *> *)values;
- (void)removeRegion_downlevel:(NSSet<MFRegionModel *> *)values;

@end

NS_ASSUME_NONNULL_END
