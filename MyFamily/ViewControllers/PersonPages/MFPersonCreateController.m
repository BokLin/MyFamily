//
//  MFPersonCreateController.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/3.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFPersonCreateController.h"

@interface MFPersonCreateController ()
{
    
    IBOutlet UITextField *_nameTF;
    IBOutlet UITextField *_agendaTF;
    IBOutlet UITextField *_birthTF;
    IBOutlet UITextField *_mobileTF;
    IBOutlet UITextField *_emailTF;
    IBOutlet UITextField *_relationTF;
    
}
@end

@implementation MFPersonCreateController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)submitAction:(id)sender {
    
    
    NSString *name = _nameTF.text;
    
    int agenda = _agendaTF.text.intValue;
    
    NSString *birth = _birthTF.text;
    
    NSString *mobile = _mobileTF.text;
    
    NSString *email = _emailTF.text;
    
    int relation = _relationTF.text.intValue;
    
    
    // 判断姓名重复
    NSPredicate *pre1 = [NSPredicate predicateWithFormat:@"realName == %@",name];
    NSArray *arr1 = [[MFDataHelper shareInstance] fetcthTable:kTablePerson predicate:pre1];
    
    if (arr1.count>0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"数据库有同一个人存在,不能重复添加" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        
        [alert show];
        
        return;
    }
    
    // 添加Person
    
    MFRelationModel *pRelation = (MFRelationModel *)[[MFDataHelper shareInstance] insertToTable:kTableRelation];
    pRelation.relationID = pRelation.x_rowID;
    pRelation.relationType = relation;
    pRelation.person_from = [MFRequestHelper shareInstance].person;
    pRelation.personID_from = [MFRequestHelper shareInstance].person.personID;
    
    MFPersonModel *person = (MFPersonModel *)[[MFDataHelper shareInstance] insertToTable:kTablePerson];
    person.realName = name;
    person.birthday = birth;
    person.email = email;
    person.gender = agenda;
    person.mobile = mobile;
    person.personID = person.x_rowID;
    [person addRelation_tosObject:pRelation];

    [[MFRequestHelper shareInstance].person addRelation_fromsObject:pRelation];
    
    pRelation.person_to = person;
    pRelation.personID_to = person.personID;

    [[MFDataHelper shareInstance] saveContext:kTableRelation];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"恭喜" message:@"添加成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    
    [alert show];
}

@end
