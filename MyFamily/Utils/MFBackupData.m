//
//  MFBackupData.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/7.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFBackupData.h"

#import "Globals.h"

@implementation MFBackupData

+ (void)backupAllData
{
    [self backup:kTableIndex];
    [self backup:kTableMessage removeAtt:@[@"user_messages"]];
    [self backup:kTableNotif removeAtt:@[@"user_notifs"]];
    [self backup:kTableNote removeAtt:@[@"user_notes"]];
    [self backup:kTableNoteGroup removeAtt:@[@"user_notes",@"user_noteGroups"]];
    [self backup:kTablePerson removeAtt:@[@"relation_froms",@"relation_tos",@"user"]];
    [self backup:kTableRelation removeAtt:@[@"person_from",@"person_to"]];
    [self backup:kTableTask removeAtt:@[@"user_tasks"]];
    [self backup:kTableUser removeAtt:@[@"person",@"user_notifs",@"user_noteGroups",@"user_notes",@"user_tasks",@"user_messages"]];
    [self backup:kTableUser_Message removeAtt:@[@"message",@"user"]];
    [self backup:kTableUser_Note removeAtt:@[@"note",@"noteGroup",@"user"]];
    [self backup:kTableUser_NoteGroup removeAtt:@[@"noteGroup",@"user"]];
    [self backup:kTableUser_Notif removeAtt:@[@"notif",@"user"]];
    [self backup:kTableUser_Task removeAtt:@[@"task",@"user"]];
}

+ (void)backup:(NSString *)tName
{
    [self backup:tName removeAtt:nil];
}

+ (void)backup:(NSString *)tName removeAtt:(NSArray *)removes
{
    NSArray *datas = [[MFDataHelper shareInstance] fetcthTable:tName];
    
    NSMutableArray *mutArr = [NSMutableArray array];
    
    if (datas.count == 0) {
        
        NSLog(@"backup %@, but empty!",tName);
        return;
    }
    
    MFBaseModel *data = [datas firstObject];
    
    NSDictionary *pDic = [data properties_aps];
    
    NSMutableArray *keys = [NSMutableArray arrayWithArray:[pDic allKeys]];
    
    // 去掉对象参数
    if (removes != nil) {

        for (NSString *key in removes) {
            
            [keys removeObject:key];
        }
    }
    
    //NSLog([keys description]);
    
    for (MFBaseModel *p in datas) {
        
        NSDictionary *dic = [p committedValuesForKeys:keys];
        
        [mutArr addObject:dic];
    }
    //NSLog([mutArr description]);
    
    NSURL *dirUrlTemp = [[MFUtil applicationDocumentsDirectory] URLByAppendingPathComponent:@"backup"];

    if (![[NSFileManager defaultManager] isExecutableFileAtPath:dirUrlTemp.absoluteString]) {
        
        NSError *error;
        
        [[NSFileManager defaultManager] createDirectoryAtURL:dirUrlTemp withIntermediateDirectories:YES attributes:nil error:&error];
        
        if (error) {
            NSLog(@"backup %@, but create dirTemp error:%@",tName,error);
            return;
        }
    }
    
    NSString *dirName = [NSString stringWithFormat:@"%@",[MFUtil appVersion]];

    NSURL *dirUrl = [dirUrlTemp URLByAppendingPathComponent:dirName];
    
    if (![[NSFileManager defaultManager] isExecutableFileAtPath:dirUrl.absoluteString]) {
        
        NSError *error;
        
        [[NSFileManager defaultManager] createDirectoryAtURL:dirUrl withIntermediateDirectories:YES attributes:nil error:&error];
        
        if (error) {
            NSLog(@"backup %@, but create dir error:%@",tName,error);
            return;
        }
    }
    
    NSString *pathName = [NSString stringWithFormat:@"D_%@_%@.csv",tName,[MFUtil appBuild]];
    
    NSURL *pathUrl = [dirUrl URLByAppendingPathComponent:pathName];
    
    [MFUtil writeCSV:mutArr pathUrl:pathUrl];

}

@end
