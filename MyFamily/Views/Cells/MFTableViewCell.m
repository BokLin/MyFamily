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
    _model = model;
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
        case MFCellTypeSelectDate:
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
    
    if (_model == nil) {
        return NO;
    }
    switch (_model.cellType) {
        case MFCellTypeTextField:
            
            self.block(self, MFCellActionTypeEditBegin);
            return YES;
            break;
        case MFCellTypeSelect:
            
            self.block(self, MFCellActionTypeSelectBegin);
            return NO;
            break;
        case MFCellTypeSelectDate:
            
            self.block(self, MFCellActionTypeSelectDateBegin);
            return NO;
            break;
        default:
            return NO;
            break;
    }
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

- (void)addActionBlock:(actionBlock) block
{
    self.block = block;
}

@end
