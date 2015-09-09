//
//  MFDataHelper.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/19.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFDataHelper.h"

@implementation MFDataHelper

+ (MFDataHelper *)shareInstance {
    
    static MFDataHelper *_data = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _data = [[MFDataHelper alloc]init];
        
        // 初始化索引表
        NSArray *array = [_data fetcthTable:kTableIndex];
        if (array.count == 0) {
            MFIndexModel *index = (MFIndexModel *)[_data insertToTable:kTableIndex];
            index.x_rowID = 1;
            [_data setIndexMax:index];
        }else {
            [_data setIndexMax:[array firstObject]];
        }
        
        [_data saveContext:kTableIndex];

    });
    return _data;
}

- (void)setIndexMax:(MFIndexModel *)max
{
    _indexMax = max;
}

- (int64_t)maxIndexInTable:(NSString *)tName
{
    
    if ([tName isEqualToString:kTableIndex]) {
        return 1;
    }
    if (_indexMax == nil) {
        
        NSLog(@"Get Index Table Error!!!");
        return 0;
    }

    if ([tName isEqualToString:kTableRegion]) {
        return ++_indexMax.t_region;
    }
    if ([tName isEqualToString:kTableHoliday]) {
        return ++_indexMax.t_holiday;
    }
    if ([tName isEqualToString:kTableMessage]) {
        return ++_indexMax.t_message;
    }
    if ([tName isEqualToString:kTableNoteGroup]) {
        return ++_indexMax.t_noteGroup;
    }
    if ([tName isEqualToString:kTableNote]) {
        return ++_indexMax.t_note;
    }
    if ([tName isEqualToString:kTableNotif]) {
        return ++_indexMax.t_notif;
    }
    if ([tName isEqualToString:kTablePerson]) {
        return ++_indexMax.t_person;
    }
    if ([tName isEqualToString:kTableRelation]) {
        return ++_indexMax.t_relation;
    }
    if ([tName isEqualToString:kTableTask]) {
        return ++_indexMax.t_task;
    }
    if ([tName isEqualToString:kTableUser_Message]) {
        return ++_indexMax.t_task;
    }
    if ([tName isEqualToString:kTableUser_Notif]) {
        return ++_indexMax.t_user_notif;
    }
    if ([tName isEqualToString:kTableUser_Note]) {
        return ++_indexMax.t_user_note;
    }
    if ([tName isEqualToString:kTableUser_NoteGroup]) {
        return ++_indexMax.t_user_noteGroup;
    }
    if ([tName isEqualToString:kTableUser_Task]) {
        return ++_indexMax.t_user_task;
    }
    if ([tName isEqualToString:kTableUser]) {
        return ++_indexMax.t_user;
    }

    NSLog(@"Get Index Error!!!");

    return 0;
}

#pragma mark - Data manager

- (MFBaseModel *)insertToTable:(NSString *)tName
{
    MFBaseModel *model = [NSEntityDescription insertNewObjectForEntityForName:tName inManagedObjectContext:[self managedObjectContext]];
    int64_t rowID = [self maxIndexInTable:tName];
    model.x_rowID = rowID;
    
    model.x_createDate = [[NSDate date] timeIntervalSinceReferenceDate];
    model.x_updateDate = [[NSDate date] timeIntervalSinceReferenceDate];
    model.x_userID_create = [MFRequestHelper shareInstance].user.userID;
    model.x_userID_update = [MFRequestHelper shareInstance].user.userID;
    model.x_version = [MFUtil appBuild];
    model.x_device = [MFUtil device];
    
    return model;
}

- (NSArray *)fetcthTable:(NSString *)tName
{
    return  [self fetcthTable:tName predicate:nil isAll:NO];
}

- (NSArray *)fetcthTable:(NSString *)tName isAll:(BOOL)isAll
{
    return [self fetcthTable:tName predicate:nil isAll:isAll];
}

- (NSArray *)fetcthTable:(NSString *)tName predicate:(NSPredicate *)predicate
{
    return [self fetcthTable:tName predicate:predicate isAll:NO];
}

- (NSArray *)fetcthTable:(NSString *)tName predicate:(NSPredicate *)predicate isAll:(BOOL)isAll
{
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    if (predicate == nil) {
        predicate = [NSPredicate predicateWithFormat:@"x_isDelete != 1"];
    }
    
    [request setEntity:[NSEntityDescription entityForName:tName inManagedObjectContext:[self managedObjectContext]]];
    
    [request setPredicate:predicate];
    
    NSError *error = nil;
    
    NSArray *results = [[self managedObjectContext] executeFetchRequest:request error:&error];
    
    if (error) {
        NSLog(@"Fetch Data Error!!! -（%@）",tName);
    }
    
    return results;
}


#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.Linbo.MyFamily" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"MyFamily" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"MyFamily.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    
    [self saveContext:@""];
}

- (void)saveContext:(NSString *)currectObject{

    NSLog(@"save %@",currectObject);
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"save object <<<%@>>> got error: \n%@ \n%@", currectObject, error, [error userInfo]);
            abort();
        }
    }
}

@end
