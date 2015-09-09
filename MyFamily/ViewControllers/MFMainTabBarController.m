//
//  MFMainTabBarController.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/25.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFMainTabBarController.h"

@interface MFMainTabBarController ()

@end

@implementation MFMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *imageArr = [NSArray arrayWithObjects:@"bar_message_gray_30",@"bar_contact_gray_30",@"bar_task_gray_30",@"bar_notif_gray_30",@"bar_more_gray_30", nil];
    NSArray *imageArr1 = [NSArray arrayWithObjects:@"bar_message_30",@"bar_contact_30",@"bar_task_30",@"bar_notif_30",@"bar_more_30", nil];
    for (int i = 0; i < [self.tabBar.items count]; i++) {
        UITabBarItem *item = [self.tabBar.items objectAtIndex:i];
        
        NSString *imgStr = [imageArr objectAtIndex:i];
        item.image = [[UIImage imageNamed:imgStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        NSString *imgStr1 = [imageArr1 objectAtIndex:i];
        item.selectedImage = [[UIImage imageNamed:imgStr1] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
