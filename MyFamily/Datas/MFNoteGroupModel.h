//
//  MFNoteGroupModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/9.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFUser_NoteGroupModel, MFUser_NoteModel;

@interface MFNoteGroupModel : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic) int64_t noteGroupID;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t user_noteGroupID;
@property (nonatomic, retain) NSSet *user_notes;
@property (nonatomic, retain) MFUser_NoteGroupModel *user_noteGroup;
@end

@interface MFNoteGroupModel (CoreDataGeneratedAccessors)

- (void)addUser_notesObject:(MFUser_NoteModel *)value;
- (void)removeUser_notesObject:(MFUser_NoteModel *)value;
- (void)addUser_notes:(NSSet *)values;
- (void)removeUser_notes:(NSSet *)values;

@end
