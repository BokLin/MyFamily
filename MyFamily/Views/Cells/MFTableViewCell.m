//
//  MFTableViewCell.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/15.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFTableViewCell.h"

@implementation MFTableViewCell

- (void)awakeFromNib {
    // Initialization code
    _detailTextField.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(MFCellModel *)model
{
    switch (model.cellType) {
        case MFCellTypeDefault:
            self.textLabel.text = model.title;
            self.detailTextLabel.text = model.detail;
      
            break;
        case MFCellTypeTextField:
            _titleLabel.text = model.title;
            _detailTextField.text = model.detail;
            _detailTextField.placeholder = model.placeholder;
            
            break;
        case MFCellTypeSelect:
            _titleLabel.text = model.title;
            _detailTextField.text = model.detail;
            _detailTextField.placeholder = model.placeholder;
            _detailTextField.textAlignment = NSTextAlignmentCenter;
            
            break;
        case MFCellTypeDateSelect:
            _titleLabel.text = model.title;
            _detailTextField.text = model.detail;
            _detailTextField.placeholder = model.placeholder;
            _detailTextField.textAlignment = NSTextAlignmentCenter;

            break;
        case MFCellTypeText:
            
            break;
        case MFCellTypeButton:
            
            break;
        default:
            break;
    }
        
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.block(self,MFCellActionTypeButtonTapped);
    
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return YES;
}

- (void)cellActionBlock:(actionBlock) block
{
    self.block = block;
}



@end
