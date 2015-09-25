//
//  MFSelectView.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/16.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFSelectView.h"

@implementation MFSelectView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithHeight:(NSInteger)heingt
{
    self = [super initWithFrame:SCREEN_RECT];
    if (self) {
        
        _height = 216;
        
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.1];
        
        // 初始化时间选择器
        _datePecker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height)];
        _datePecker.backgroundColor = [UIColor whiteColor];
        [self addSubview:_datePecker];
        
        // 初始化选择器
        _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height)];
        [self addSubview:_pickerView];
        _pickerView.backgroundColor = [UIColor whiteColor];
        _pickerView.delegate = self;
        _pickerView.dataSource = self;
        
        [_datePecker addTarget:self action:@selector(dateChaneged:) forControlEvents:UIControlEventValueChanged];
        
        _dataSource = [NSArray array];
        
        _datePecker.userInteractionEnabled = YES;
        _pickerView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bgTapped:)];
        
        [self addGestureRecognizer:tap];
        
    }
    
    return self;
}

- (void)bgTapped:(id)sender
{
    [self hide:YES];
    
}

- (void)setHeight:(NSInteger)height
{
    _height = 216;
}

- (void)setDate:(NSDate *)date
{
    _currectDate = date;
}

- (void)setIndex:(NSInteger)index
{
    _currentIndex = index;
}

- (void)setupSelect:(NSArray *)datas index:(NSInteger)index
{
    _datePecker.hidden = YES;
    _pickerView.hidden = NO;
    
    _type = MFSelectViewTypeDefault;
    _currentIndex = index;
    _dataSource = datas;
    
    [_pickerView reloadAllComponents];
}

- (void)setupDateSelect:(NSDate *)date
{
    _datePecker.hidden = NO;
    _pickerView.hidden = YES;
    
    _currectDate = date;
    
    _type = MFSelectViewTypeDate;
    
    [_datePecker setDate:date animated:YES];
    
}

- (void)showinView:(UIView *)view
{
    
    [view addSubview:self];
    
    self.hidden = NO;


    if (_type == MFSelectViewTypeDefault) {
        
        [UIView animateWithDuration:0.4 animations:^{
            _pickerView.frame = CGRectMake(0, SCREEN_HEIGHT-_height, SCREEN_WIDTH, _height);
            
            
        } completion:^(BOOL finished) {
            _pickerView.frame = CGRectMake(0, SCREEN_HEIGHT-_height, SCREEN_WIDTH, _height);

            [_pickerView selectRow:_currentIndex inComponent:0 animated:YES];
            
        }];
    }else {
        
        [UIView animateWithDuration:0.4 animations:^{
            _datePecker.frame = CGRectMake(0, SCREEN_HEIGHT-_height, SCREEN_WIDTH, _height);
            
            
        } completion:^(BOOL finished) {
            _pickerView.frame = CGRectMake(0, SCREEN_HEIGHT-_height, SCREEN_WIDTH, _height);

            [_datePecker setDate:_currectDate];
            
        }];
        
    }
}

- (void)showinWindow
{
    [self showinView:KEYWINDOW];
}

- (void)hide:(BOOL)animation
{
    
    if (animation == NO) {
        
        _datePecker.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height);
        
        _pickerView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height);

        self.hidden = YES;
        
        return;
    }
    
    
    [UIView animateWithDuration:0.4 animations:^{
        
        _datePecker.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height);
        
        _pickerView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, _height);

        
    } completion:^(BOOL finished) {
 
        self.hidden = YES;

    }];
    
    
}

- (void)dateChaneged:(id)sender
{
    
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
    
}

@end
