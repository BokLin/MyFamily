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

typedef enum : NSUInteger {
    MFSelectActionTypeNone,
    MFSelectActionTypeDidShow,
    MFSelectActionTypeDidDismiss,
    MFSelectActionTypeCancel,
    MFSelectActionTypeOK,
    MFSelectActionTypePrevious,
    MFSelectActionTypeNext,
    MFSelectActionTypeValueChanged,
} MFSelectActionType;

@interface MFSelectView : UIView<UIPickerViewDataSource,UIPickerViewDelegate>
{
    UIPickerView *_pickerView;
    
    UIDatePicker *_datePecker;

    NSArray *_dataSource;
    
    NSInteger _currentIndex;
    
    NSDate *_currectDate;
    
    NSString *_placeholder;
    
    NSInteger _height;
    
    UIButton *_previousButton;
    
    UIButton *_nextButton;
    
    UIButton *_okButton;

    UIButton *_cancelButton;

    UILabel *_titleLabel;
    
    UIView *_contentView;
    
}

/**
 *  回调函数
 *
 *  @param selectView 选择器自己
 *  @param type       回调的类型
 */
typedef void (^selectBlock) (MFSelectView *selectView, MFSelectActionType type);

/**
 *  回调函数
 */
@property (nonatomic, strong) selectBlock block;

/**
 *  选择器的类型
 */
@property (nonatomic ,assign) MFSelectViewType selectType;

/**
 *  选择器的标题
 */
@property (nonatomic ,strong) NSString *title;

/**
 *  初始化方法 包含2个按钮 (确认，取消)
 *
 *  @param title 标题
 *
 *  @return 实体
 */
- (instancetype)initWithTitle:(NSString *)title;

/**
 *  事件回调函数
 *
 *  @param block 回调函数
 */
- (void)addSelectBlock:(selectBlock)block;

/**
 *  设置方法 （可选）
 *
 *  @param date 当前时间
 */
- (void)setDate:(NSDate *)date;

/**
 *  设置方法（默认月日周 时分秒）
 *
 *  @param dateModel 时间选择器的Model
 */
- (void)setDateModel:(UIDatePickerMode)dateModel;

/**
 *  设置方法 （可选）
 *
 *  @param index 下标
 */
- (void)setIndex:(NSInteger)index;

/**
 *  选择器模式
 *
 *  @param title 标题
 *  @param datas 数据数组
 *  @param index 下标
 */
- (void)setupSelectTitle:(NSString *)title datas:(NSArray *)datas index:(NSInteger)index;

/**
 *  时间选择器模式
 *
 *  @param title     标题
 *  @param date      时间
 *  @param dateModel 时间模式
 */
- (void)setupDateSelectTitle:(NSString *)title datas:(NSDate *)date model:(UIDatePickerMode)dateModel;

/**
 *  页面显示
 *
 *  @param view 显示父页面
 */
- (void)showinView:(UIView *)view;

/**
 *  全屏显示
 */
- (void)showinWindow;

/**
 *  隐藏选择器
 *
 *  @param animation 是否动画
 */
- (void)hide:(BOOL)animation;

@end
