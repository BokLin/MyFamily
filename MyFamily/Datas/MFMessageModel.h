//
//  MFMessageModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBaseModel.h"


@interface MFMessageModel : MFBaseModel

@property (nonatomic) int64_t messageID;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * content;
@property (nonatomic) int32_t messageType;
@property (nonatomic) BOOL isRead;

@end
