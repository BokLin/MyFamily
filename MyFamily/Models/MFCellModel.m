//
//  MFCellModel.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/14.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFCellModel.h"

@implementation MFCellModel


- (id)init
{
    self = [super init];
    if (self) {
    
        _canEdit = YES;
        
    }
    return self;
}

- (id)initWithType:(MFCellType)type
             title:(NSString *)title
            detail:(NSString *)detail
{
    
    return [self initWithType:type
                        title:title
                       detail:detail
                  placeholder:@""
                      canEdit:YES];
}
- (id)initWithType:(MFCellType)type
               title:(NSString *)title
              detail:(NSString *)detail
         placeholder:(NSString *)holder
             canEdit:(BOOL)canEdit
{
    
    self = [self init];
    if (self) {
        
        self.cellType = type;
        self.title = title;
        self.detail = detail;
        self.placeholder = holder;
        self.canEdit = canEdit;
        
    }
    return self;
    
}

@end
