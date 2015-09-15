//
//  MFCellModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/14.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 通知循环类型
 **/
typedef enum : NSUInteger {
    MFCellTypeDefault,
    MFCellTypeTextField,
    MFCellTypeOption,
    MFCellTypeDateOption,
    MFCellTypeButton,
    MFCellTypeText

} MFCellType;

@interface MFCellModel : NSObject

@property (nonatomic) MFCellType cellType;

@property (nonatomic) NSString *title;

@property (nonatomic) NSString *detail;

@property (nonatomic) NSString *placeholder;

@property (nonatomic) BOOL canEdit;

- (id)initWithDic:(NSDictionary *)dic;

- (id)initWithType:(MFCellType)type
             title:(NSString *)title
            detail:(NSString *)detail;

- (id)initWithType:(MFCellType)type
               title:(NSString *)title
              detail:(NSString *)detail
         placeholder:(NSString *)holder
             canEdit:(BOOL)canEdit;

@end
