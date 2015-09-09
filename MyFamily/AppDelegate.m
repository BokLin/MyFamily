//
//  AppDelegate.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/12.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    MFDataHelper *dataHelper = [MFDataHelper shareInstance];
    
    // 第一次登陆需要做的事情
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"_is_first_launch_app"]boolValue] == NO) {
        [[NSUserDefaults standardUserDefaults] setObject:@YES forKey:@"_is_first_launch_app"];
        [[NSUserDefaults standardUserDefaults] synchronize];

        [self somethingJustFirstLaodApp];
    }
    
    NSArray *array = [dataHelper fetcthTable:kTableUser];
    for (MFUserModel *user in array) {
        
        if ([user.account isEqual:@"lb"]) {
            [[MFRequestHelper shareInstance] setUser:user];
            [[MFRequestHelper shareInstance] setPerson:user.person];
            NSLog(@"%@",[user description]);
            break;
        }
    }
    //NSPredicate *pre = [NSPredicate predicateWithFormat:@"rowID == 1"];
    
    //NSArray *array2 = [dataHelper fetcthTable:kTableRegion predicate:pre];

    return YES;
}

- (void)somethingJustFirstLaodApp
{
    // 初始化数据库
    MFDataHelper *dataHelper = [MFDataHelper shareInstance];
    
    MFUserModel *user = (MFUserModel *)[dataHelper insertToTable:kTableUser];
    user.account = @"lb";
    user.password = @"111111";
    user.nickName = @"管理员";
    user.activity = 10000;
    user.userID = user.x_rowID;
    
    MFPersonModel *person = (MFPersonModel *)[dataHelper insertToTable:kTablePerson];
    person.realName = @"林博";
    person.mobile = @"13881895803";
    person.email = @"bok@linbok.com";
    person.personID = person.x_rowID;
    
    user.person = person;
    user.personID = person.x_rowID;
    
    person.user = user;
    person.userID = user.userID;
    
    [dataHelper saveContext:kTableUser];
    
    [MFInitialData initialTables];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    [[MFDataHelper shareInstance] saveContext];

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [[MFDataHelper shareInstance] saveContext];

}



@end
