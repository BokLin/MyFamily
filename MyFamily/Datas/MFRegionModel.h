//
//  MFRegionModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFRegionModel;

@interface MFRegionModel : MFBaseModel

@property (nonatomic) int32_t level;
@property (nonatomic, retain) NSString * region_city;
@property (nonatomic, retain) NSString * region_county;
@property (nonatomic, retain) NSString * region_province;
@property (nonatomic) int64_t regionID;
@property (nonatomic) int64_t regionID_uplevel;
@property (nonatomic, retain) NSSet *region_downlevel;
@property (nonatomic, retain) MFRegionModel *region_uplevel;
@end

@interface MFRegionModel (CoreDataGeneratedAccessors)

- (void)addRegion_downlevelObject:(MFRegionModel *)value;
- (void)removeRegion_downlevelObject:(MFRegionModel *)value;
- (void)addRegion_downlevel:(NSSet *)values;
- (void)removeRegion_downlevel:(NSSet *)values;

@end
