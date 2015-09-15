//
//  MFPersonDetailController.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/2.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFPersonDetailController.h"

#import "MFPersonEditController.h"

@interface MFPersonDetailController ()
{
    NSArray *_keySource;
    
    NSArray *_valueSouce;
    
}
@end

@implementation MFPersonDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    [rightButton addTarget:self action:@selector(rightBarButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    
    
    [self setPersonData];
    
    
}

- (void)rightBarButtonAction:(id)sender
{
    
    [self performSegueWithIdentifier:kSegueAnyToPersonEdit sender:self];
}

- (void)setPersonData
{

    MFPersonModel *person = self.person;
    
    //NSLog([person description]);
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
    
    _keySource = @[keyArr2,keyArr3,keyArr4,keyArr5];
    _valueSouce = @[valueArr2,valueArr3,valueArr4,valueArr5];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    switch (section) {
        case 0:
            return @"基本信息";
            break;
        case 1:
            return @"个人信息";
            break;
        case 2:
            return @"社交信息";
            break;
        case 3:
            return @"其他";
            break;
        default:
            break;
    }
    
    return @"";
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


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:kSegueAnyToPersonEdit]) {
        
        MFPersonEditController *vc = (MFPersonEditController *)segue.destinationViewController;
        vc.person = self.person;
    }
}


@end
