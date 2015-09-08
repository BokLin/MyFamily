//
//  MFBackupData.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/7.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MFBackupData : NSObject

+ (void)backupAllData;

+ (void)backup:(NSString *)tName;

+ (void)backup:(NSString *)tName removeAtt:(NSArray *)removes;

@end
