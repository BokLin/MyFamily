//
//  MFMoreController.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFMoreController.h"

@interface MFMoreController ()<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *_tableView;
    
    NSArray *_keySource;
    
    NSArray *_valueSouce;
    
}
@end

@implementation MFMoreController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)setUpTableView
{
    
    NSArray *key1 = @[@"个人中心",@"密码管理",@"日志管理",@"设置"];
    
    NSArray *value1 = @[@"",@"1",@"10",@""];
    
    NSArray *key2 = @[@"切换账号",@"保存数据"];
    
    NSString *k21 = @"";
    if ([MFRequestHelper shareInstance].dataChangedCount > 0) {
        k21 = [NSString stringWithFormat:@"%ld",[MFRequestHelper shareInstance].dataChangedCount];
    }
    
    NSArray *value2 = @[@"",k21];
    
    _keySource = @[key1,key2];
    
    _valueSouce = @[value1,value2];
    
    [_tableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.tabBarController.title = @"更多";
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
    
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self setUpTableView];

}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _keySource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    NSArray *array = _keySource[section];
    
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = @"";
    cell.detailTextLabel.text = @"";
    
    NSArray *keyArr = _keySource[indexPath.section];
    
    NSString *key = keyArr[indexPath.row];
    
    NSArray *valueArr = _valueSouce[indexPath.section];
    
    NSString *value = valueArr[indexPath.row];
    
    cell.textLabel.text = key;
    cell.detailTextLabel.text = value;
    
    //NSLog(value);
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    switch (indexPath.section) {
        case 0:
        {
            switch (indexPath.row) {
                case 0:
                    [self performSegueWithIdentifier:kSegueAnyToUserInfo sender:self];
                    break;
                case 1:
                    
                    break;
                case 2:
                    
                    break;
                case 3:
                    
                    break;
                default:
                    break;
            }
        }
            break;
        
        case 1:
        {
            switch (indexPath.row) {
                case 0:
                    
                    break;
                case 1:
                    [MFBackupData backupAllData];
                    [self setUpTableView];
                    break;
                default:
                    break;
            }
        }
        default:
            break;
    }
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
