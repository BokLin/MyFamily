//
//  MFContactListController.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/25.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFContactListController.h"

#import "MFContactCell.h"
#import "MFPersonDetailController.h"

@interface MFContactListController ()
{
    
    NSArray *_contactList;
    
    IBOutlet UITableView *_tableView;
    
    NSIndexPath *_selectIndex;
    
}
@end

@implementation MFContactListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _contactList = [NSArray array];
    
    [self setDataSource1];
 
    
    [MFBackupData backupAllData];
    
}

- (void)setDataSource1
{
    
    _contactList = [[MFDataHelper shareInstance] fetcthTable:kTablePerson];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    
     self.tabBarController.title = @"联系人";

    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [rightButton addTarget:self action:@selector(rightBarButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    self.tabBarController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    
    [self setDataSource1];
    [_tableView reloadData];
    
}

- (void)rightBarButtonAction:(id)sender
{
    
    [self performSegueWithIdentifier:kSegueAnyToPersonCreate sender:self];
    
}

#pragma mark - UITableView Delegate

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _contactList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MFContactCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    MFPersonModel *person = _contactList[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%lld %@ %@ %@",person.personID,person.realName,person.mobile,person.email];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    _selectIndex = indexPath;
    
    [self performSegueWithIdentifier:kSegueAnyToPersonDetail sender:self];
    
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
    if ([segue.identifier isEqualToString:kSegueAnyToPersonDetail]) {
        
        MFPersonDetailController *vc = (MFPersonDetailController *)segue.destinationViewController;
        MFPersonModel *person = _contactList[_selectIndex.row];
        vc.person = person;
    }
    
}

@end
