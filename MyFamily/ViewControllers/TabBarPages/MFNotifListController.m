//
//  MFNotifListController.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFNotifListController.h"

#import "ReactiveCocoa-umbrella.h"

@interface MFNotifListController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation MFNotifListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    RACSignal *validUsernameSignal =
    [self.textField.rac_textSignal map:^id(NSString *text) {
         return @([self isValidUsername:text]);
     }];
    
    
    
    RAC(self.textField, backgroundColor) =
    [validUsernameSignal map:^id(NSNumber *passwordValid){
         return[passwordValid boolValue] ? [UIColor clearColor]:[UIColor yellowColor];
     }];
    
    
    RACSignal *signUpActiveSignal = [RACSignal combineLatest:@[validUsernameSignal]
                                                      reduce:^id(NSNumber*usernameValid){
                                                          return @([usernameValid boolValue]);
                                                      }];
    
}
- (BOOL)isValidUsername:(NSString *)username {
    return username.length > 3;
}
- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    
    self.tabBarController.title = @"通知";
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
