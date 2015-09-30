//
//  MFTableViewCell.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/15.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Globals.h"

typedef enum : NSUInteger {
    MFCellActionTypeDefault,
    MFCellActionTypeEditBegin,
    MFCellActionTypeSelectBegin,
    MFCellActionTypeSelectDateBegin,
    MFCellActionTypeButtonTapped,
    MFCellActionTypeValueUpdated
} MFCellActionType;

@interface MFTableViewCell : UITableViewCell<UITextFieldDelegate>

typedef void (^actionBlock) (MFTableViewCell *cell, MFCellActionType type);

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UITextField *detailTextField;

@property (nonatomic, retain) MFCellModel *model;

@property (nonatomic, retain) NSIndexPath *indexPath;

@property (nonatomic, strong)actionBlock block;

/**
 *  The block of cell actions
 *
 *  @param block 外部调用方法
 */
- (void)addActionBlock:(actionBlock) block;

@end