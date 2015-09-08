//
//  MFRegionModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFRegionModel;

@interface MFRegionModel : NSManagedObject

@property (nonatomic) NSTimeInterval createDate;
@property (nonatomic) NSTimeInterval deleteDate;
@property (nonatomic, retain) NSString * device;
@property (nonatomic) BOOL invalid;
@property (nonatomic) BOOL isDefault;
@property (nonatomic) BOOL isDelete;
@property (nonatomic) int32_t level;
@property (nonatomic, retain) NSString * region_city;
@property (nonatomic, retain) NSString * region_county;
@property (nonatomic, retain) NSString * region_province;
@property (nonatomic) int64_t regionID;
@property (nonatomic) int64_t regionID_uplevel;
@property (nonatomic) int64_t rowID;
@property (nonatomic) NSTimeInterval updateDate;
@property (nonatomic) int64_t userID_create;
@property (nonatomic) int64_t userID_delete;
@property (nonatomic) int64_t userID_update;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSSet *region_downlevel;
@property (nonatomic, retain) MFRegionModel *region_uplevel;
@end

@interface MFRegionModel (CoreDataGeneratedAccessors)

- (void)addRegion_downlevelObject:(MFRegionModel *)value;
- (void)removeRegion_downlevelObject:(MFRegionModel *)value;
- (void)addRegion_downlevel:(NSSet *)values;
- (void)removeRegion_downlevel:(NSSet *)values;

@end
