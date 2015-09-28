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
    MFCellActionTypeTextFieldTapped,
    MFCellActionTypeButtonTapped,
    MFCellActionTypePrevious,
    MFCellActionTypeNext,
    MFCellActionTypeUpdated,
    MFCellActionTypeDismissed
} MFCellActionType;

@interface MFTableViewCell : UITableViewCell<UITextFieldDelegate>

typedef void (^actionBlock) (MFTableViewCell *cell, MFCellActionType type);

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UITextField *detailTextField;

@property (nonatomic, assign) MFCellType type;

@property (nonatomic, retain) MFCellModel *model;

@property (nonatomic, retain) NSIndexPath *indexPath;

@property (nonatomic, strong)actionBlock block;


- (void)cellActionBlock:(actionBlock) block;

@end