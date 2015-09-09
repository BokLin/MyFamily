//
//  MFHolidayModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"


@interface MFHolidayModel : MFBaseModel

@property (nonatomic, retain) NSString * date;
@property (nonatomic) int64_t holidayID;
@property (nonatomic) BOOL isLunar;
@property (nonatomic, retain) NSString * name;

@end
