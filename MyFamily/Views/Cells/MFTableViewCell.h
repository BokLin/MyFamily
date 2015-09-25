//
//  MFTableViewCell.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/15.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Globals.h"

@interface MFTableViewCell : UITableViewCell<UITextFieldDelegate>

typedef void (^textFieldBlock) (MFTableViewCell *cell);

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UITextField *detailTextField;

@property (nonatomic, assign) MFCellType type;

@property (nonatomic, retain) MFCellModel *model;

@property (nonatomic, retain) NSIndexPath *indexPath;

- (void)textFieldTapped:(textFieldBlock) block;

@property (nonatomic, strong)textFieldBlock block;

@end