//
//  MFPersonEditController.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/14.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFPersonEditController.h"

@interface MFPersonEditController ()
{
    
    NSArray *_dataSource;
    
}
@end

@implementation MFPersonEditController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
    [self setUpTableView];
    
    
}

- (void)setUpTableView
{
    
    MFPersonModel *person = [MFRequestHelper shareInstance].person;
    //MFRequestHelper *user = [MFRequestHelper shareInstance].user;
    
    
    MFCellModel *m1 = [[MFCellModel alloc] initWithType:MFCellTypeDefault title:@"个人ID" detail:[NSString stringWithFormat:@"%lld",person.personID]];
    MFCellModel *m2 = [[MFCellModel alloc] initWithType:MFCellTypeTextField title:@"真实姓名" detail:person.realName placeholder:@"请选择性别" canEdit:YES];
    MFCellModel *m3 = [[MFCellModel alloc] initWithType:MFCellTypeOption title:@"性别" detail:@"男" placeholder:@"请选择性别" canEdit:YES];
    MFCellModel *m4 = [[MFCellModel alloc] initWithType:MFCellTypeDateOption title:@"生日" detail:@"" placeholder:@"2014-1-1" canEdit:YES];
    MFCellModel *m5 = [[MFCellModel alloc] initWithType:MFCellTypeDateOption title:@"生日" detail:@"" placeholder:@"2014-1-1" canEdit:YES];
    MFCellModel *m6 = [[MFCellModel alloc] initWithType:MFCellTypeDateOption title:@"生日" detail:@"" placeholder:@"2014-1-1" canEdit:YES];
    MFCellModel *m7 = [[MFCellModel alloc] initWithType:MFCellTypeDateOption title:@"生日" detail:@"" placeholder:@"2014-1-1" canEdit:YES];
    MFCellModel *m8 = [[MFCellModel alloc] initWithType:MFCellTypeDateOption title:@"生日" detail:@"" placeholder:@"2014-1-1" canEdit:YES];

    NSArray *arr1 = @[m1,m2,m3,m4,m5,m6,m7,m8];
    
    _dataSource = @[arr1];

    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    NSArray *array = _dataSource[section];
    
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
    
    
    NSArray *array = _dataSource[indexPath.section];
    
    MFCellModel *model = array[indexPath.row];
    
    UITableViewCell *cell;
    
    switch (model.cellType) {
        case MFCellTypeDefault:
        {
            cell= [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
            cell.textLabel.text = @"";
            cell.detailTextLabel.text = @"";
            
            cell.textLabel.text = model.title;
            cell.detailTextLabel.text = model.detail;
            
        }
            break;
        case MFCellTypeTextField:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"editCell" forIndexPath:indexPath];

            
            
        }
            break;
        case MFCellTypeOption:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"selectCell" forIndexPath:indexPath];

            
            
        }
            break;
        case MFCellTypeDateOption:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"selectDateCell" forIndexPath:indexPath];
   
            
            
        }
            break;
        case MFCellTypeButton:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
            cell.textLabel.text = @"";
            cell.detailTextLabel.text = @"";
            
            cell.textLabel.text = model.title;
            cell.detailTextLabel.text = model.detail;
            
        }
            break;
        case MFCellTypeText:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
            cell.textLabel.text = @"";
            cell.detailTextLabel.text = @"";
            
            cell.textLabel.text = model.title;
            cell.detailTextLabel.text = model.detail;
            
        }
            break;
            
        default:
            break;
    }
    
    
    

    

    
    //NSLog(value);
    
    return cell;
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
