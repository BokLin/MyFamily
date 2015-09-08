//
//  MFDataHelper.h
//  MyFamily
//
//  Created by EvenTouch on 15/8/19.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "Globals.h"

@interface MFDataHelper : NSObject
{
    MFIndexModel *_indexMax;
}

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


- (void)setIndexMax:(MFIndexModel *)max;

+ (MFDataHelper *)shareInstance;

- (MFBaseModel *)insertToTable:(NSString *)tName;

- (NSArray *)fetcthTable:(NSString *)tName;
- (NSArray *)fetcthTable:(NSString *)tName isAll:(BOOL)isAll;
- (NSArray *)fetcthTable:(NSString *)tName predicate:(NSPredicate *)predicate;
- (NSArray *)fetcthTable:(NSString *)tName predicate:(NSPredicate *)predicate isAll:(BOOL)isAll;

- (void)saveContext;

- (void)saveContext:(NSString *)currectObject;

@end
