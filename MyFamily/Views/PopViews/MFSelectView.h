//
//  MFSelectView.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/16.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Globals.h"

typedef enum : NSUInteger {
    MFSelectViewTypeDefault,
    MFSelectViewTypeDate,
} MFSelectViewType;

@interface MFSelectView : UIView<UIPickerViewDataSource,UIPickerViewDelegate>
{
    UIPickerView *_pickerView;
    
    UIDatePicker *_datePecker;

    NSArray *_dataSource;
    
    MFSelectViewType _type;
    
    NSInteger _currentIndex;
    
    NSDate *_currectDate;
    
    NSString *_placeholder;
    
    NSInteger _height;
}

- (id)initWithHeight:(NSInteger)heingt;

- (void)setDate:(NSDate *)date;

- (void)setIndex:(NSInteger)index;

- (void)setupSelect:(NSArray *)datas index:(NSInteger)index;

- (void)setupDateSelect:(NSDate *)date;

- (void)showinView:(UIView *)view;

- (void)showinWindow;

- (void)hide:(BOOL)animation;

@end
