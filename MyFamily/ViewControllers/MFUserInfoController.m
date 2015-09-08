//
//  MFUserInfoController.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/25.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFUserInfoController.h"

@interface MFUserInfoController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_keySource;

    NSArray *_valueSouce;
}
@end

@implementation MFUserInfoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _keySource = [NSArray array];
    _valueSouce = [NSArray array];
    
    [self setUserData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.tabBarController.title = @"个人信息";
    self.tabBarController.navigationItem.rightBarButtonItem = nil;
}

- (void)setUserData
{
    MFUserModel *user = [MFRequestHelper shareInstance].user;
    MFPersonModel *person = [MFRequestHelper shareInstance].person;
    
    // 用户信息
    NSArray *keyArr1 = @[@"用户ID",@"账号",@"密码",@"昵称",@"活跃度"];
    NSArray *valueArr1 = @[@(user.userID).c,
                           [MFUtil crs:user.account].c,
                           [MFUtil crs:user.password].c,
                           [MFUtil crs:user.nickName].c,
                           @(user.activity).c];
    
    // 基本资料
    NSArray *keyArr2 = @[@"个人ID",@"真实姓名",@"性别",@"生日",@"手机",@"邮箱"];
    NSArray *valueArr2 = @[@(person.personID).c,
                           [MFUtil crs:person.realName].c,
                           @(person.gender).c,
                           [MFUtil crs:person.birthday].c,
                           [MFUtil crs:person.mobile].c,
                           [MFUtil crs:person.email].c];
    
    //个人信息
    NSArray *keyArr3 = @[@"头像",@"身份证",@"籍贯",@"现住地",@"爱好",@"身高",@"体重",@"血型",@"备注"];
    NSArray *valueArr3 = @[[MFUtil crs:person.photoUrl].c,
                           [MFUtil crs:person.iDCard].c,
                           @(person.regionID_homeland).c,
                           @(person.regionID_living).c,
                           [MFUtil crs:person.hobby].c,
                           @(person.height_CM).c,
                           [@(person.weight_KG) f:2],
                           [MFUtil crs:person.bloodType].c,
                           [MFUtil crs:person.remark].c];
    
    // 社交信息
    NSArray *keyArr4 = @[@"职业",@"公司",@"微信",@"扣扣",@"微博",@"博客"];
    NSArray *valueArr4 = @[[MFUtil crs:person.job].c,
                           [MFUtil crs:person.company].c,
                           [MFUtil crs:person.weChat].c,
                           [MFUtil crs:person.qq].c,
                           [MFUtil crs:person.weibo].c,
                           [MFUtil crs:person.blog].c];
    
    // 其他
    NSArray *keyArr5 = @[@"辈分",@"定位"];
    NSArray *valueArr5 = @[[MFUtil crs:person.generation].c,
                           [MFUtil crs:person.locate].c];
    
    _keySource = @[keyArr1,keyArr2,keyArr3,keyArr4,keyArr5];
    _valueSouce = @[valueArr1,valueArr2,valueArr3,valueArr4,valueArr5];
    
}

#pragma mark - UITableView Delegate

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _keySource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    NSArray *array = _keySource[section];
    
    return array.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"用户信息";
            break;
        case 1:
            return @"基本信息";
            break;
        case 2:
            return @"个人信息";
            break;
        case 3:
            return @"社交信息";
            break;
        case 4:
            return @"其他";
            break;
        default:
            break;
    }
    
    return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    cell.textLabel.text = @"";
    cell.detailTextLabel.text = @"";
    
    NSArray *keyArr = _keySource[indexPath.section];
    
    NSString *key = keyArr[indexPath.row];
    
    NSArray *valueArr = _valueSouce[indexPath.section];
    
    NSString *value = valueArr[indexPath.row];
    
    cell.textLabel.text = key;
    cell.detailTextLabel.text = value;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
@end
