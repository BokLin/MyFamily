//
//  MFSelectView.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/16.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFSelectView.h"

#define SelectHeight 216
#define SelectBgColor [UIColor whiteColor]

@implementation MFSelectView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithTitle:(NSString *)title
{
    self = [super initWithFrame:SCREEN_RECT];
    if (self) {
        
        _height = SelectHeight+100;
        
        _title = title;
        
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.1];
        
        _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height)];
        _contentView.backgroundColor = [UIColor clearColor];
        [self addSubview:_contentView];
        
        UIView *titleBar = [[UIView alloc] initWithFrame:CGRectMake(0, 50, SCREEN_WIDTH, 50)];
        titleBar.backgroundColor = SelectBgColor;
        [_contentView addSubview:titleBar];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, SCREEN_WIDTH-100, 50)];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [titleBar addSubview:_titleLabel];
        _titleLabel.text = title;
        
        // 初始化时间选择器
        _datePecker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, _height-SelectHeight, SCREEN_WIDTH, SelectHeight)];
        _datePecker.backgroundColor = SelectBgColor;
        [_contentView addSubview:_datePecker];
        
        // 初始化选择器
        _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, _height-SelectHeight, SCREEN_WIDTH, SelectHeight)];
        [_contentView addSubview:_pickerView];
        _pickerView.backgroundColor = SelectBgColor;
        _pickerView.delegate = self;
        _pickerView.dataSource = self;
        
        [_datePecker addTarget:self action:@selector(dateChaneged:) forControlEvents:UIControlEventValueChanged];
        
        _dataSource = [NSArray array];
        
        _datePecker.userInteractionEnabled = YES;
        _pickerView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bgTapped:)];
        
        [self addGestureRecognizer:tap];
        
        UIView *line1 = [[UIView alloc] initWithFrame:CGRectMake(0, 50, SCREEN_WIDTH, 0.5)];
        line1.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
        [_contentView addSubview:line1];
        
        UIView *line2 = [[UIView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, 0.5)];
        line2.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
        [_contentView addSubview:line2];
        
    }
    
    return self;
}

- (void)addSelectBlock:(selectBlock)block
{
    self.block = block;
}

- (void)bgTapped:(id)sender
{
    [self hide:YES];
    
}

- (void)setTitle:(NSString *)title
{
    _title = title;
    _titleLabel.text = title;
}

- (void)setDate:(NSDate *)date
{
    _currectDate = date;
}

- (void)setDateModel:(UIDatePickerMode)dateModel
{
    _datePecker.datePickerMode = dateModel;
}

- (void)setIndex:(NSInteger)index
{
    _currentIndex = index;
    if (_pickerView) {
        [_pickerView selectRow:index inComponent:0 animated:YES];
    }
}

- (void)setupSelect:(NSArray *)datas index:(NSInteger)index
{
    _datePecker.hidden = YES;
    _pickerView.hidden = NO;
    
    _selectType = MFSelectViewTypeDefault;
    _currentIndex = index;
    _dataSource = datas;
    
    [_pickerView selectRow:index inComponent:0 animated:YES];
    [_pickerView reloadAllComponents];
}

- (void)setupDateSelect:(NSDate *)date model:(UIDatePickerMode)dateModel
{
    _datePecker.hidden = NO;
    _pickerView.hidden = YES;
    
    _currectDate = date;
    
    _selectType = MFSelectViewTypeDate;
    
    [_datePecker setDate:date animated:YES];
    [_datePecker setDatePickerMode:dateModel];
}

- (void)showinView:(UIView *)view
{
    
    [view addSubview:self];
    
    self.hidden = NO;
    
    [UIView animateWithDuration:0.4 animations:^{
        
        _contentView.frame = CGRectMake(0, SCREEN_HEIGHT-_height, SCREEN_WIDTH, _height);
        
    } completion:^(BOOL finished) {
        _contentView.frame = CGRectMake(0, SCREEN_HEIGHT-_height, SCREEN_WIDTH, _height);
        
        if (_selectType == MFSelectViewTypeDefault) {
            [_pickerView selectRow:_currentIndex inComponent:0 animated:YES];
        }else {
            [_datePecker setDate:_currectDate];
            
        }
        
        if (self.block) {
            
            self.block(self,MFSelectActionTypeDidShow);
        }
    }];


}

- (void)showinWindow
{
    [self showinView:KEYWINDOW];
}

- (void)hide:(BOOL)animation
{
    
    if (animation == NO) {
        
        _contentView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height);
        
        self.hidden = YES;
        
    }else {
        
        [UIView animateWithDuration:0.4 animations:^{
            
            _contentView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height);
            
        } completion:^(BOOL finished) {
            
            self.hidden = YES;
            
        }];
    }
    
    if (self.block) {
    
        self.block(self,MFSelectActionTypeDidDismiss);
    }
}

- (void)dateChaneged:(id)sender
{
    if (self.block) {
        
        self.block(self,MFSelectActionTypeValueChanged);
    }
}

#pragma mark - UIPickerViewDelegate

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (_dataSource == nil) {
        return 0;
    }
    return _dataSource.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (_dataSource == nil) {
        return @"";
    }
    
    NSString *string = _dataSource[row];
    
    return string;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (self.block) {
        
        self.block(self,MFSelectActionTypeValueChanged);
    }
}

@end
