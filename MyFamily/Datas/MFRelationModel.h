//
//  MFRelationModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"

@class MFPersonModel;

@interface MFRelationModel : MFBaseModel

@property (nonatomic) int64_t personID_from;
@property (nonatomic) int64_t personID_to;
@property (nonatomic) int64_t relationID;
@property (nonatomic) int32_t relationType;
@property (nonatomic, retain) MFPersonModel *person_from;
@property (nonatomic, retain) MFPersonModel *person_to;

@end
