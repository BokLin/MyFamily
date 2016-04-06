//
//  MFMessageModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFMessageModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFMessageModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *content;
@property (nonatomic) BOOL isRead;
@property (nonatomic) int64_t messageID;
@property (nonatomic) int32_t messageType;
@property (nullable, nonatomic, retain) NSString *title;
@property (nonatomic) NSTimeInterval x_createDate;
@property (nonatomic) NSTimeInterval x_deleteDate;
@property (nullable, nonatomic, retain) NSString *x_device;
@property (nonatomic) BOOL x_invalid;
@property (nonatomic) BOOL x_isDefault;
@property (nonatomic) BOOL x_isDelete;
@property (nonatomic) BOOL x_isSync;
@property (nullable, nonatomic, retain) NSString *x_remark;
@property (nonatomic) int64_t x_rowID;
@property (nonatomic) NSTimeInterval x_updateDate;
@property (nonatomic) int64_t x_userID_create;
@property (nonatomic) int64_t x_userID_delete;
@property (nonatomic) int64_t x_userID_update;
@property (nullable, nonatomic, retain) NSString *x_version;
@property (nullable, nonatomic, retain) NSSet<MFUser_MessageModel *> *user_messages;

@end

@interface MFMessageModel (CoreDataGeneratedAccessors)

- (void)addUser_messagesObject:(MFUser_MessageModel *)value;
- (void)removeUser_messagesObject:(MFUser_MessageModel *)value;
- (void)addUser_messages:(NSSet<MFUser_MessageModel *> *)values;
- (void)removeUser_messages:(NSSet<MFUser_MessageModel *> *)values;

@end

NS_ASSUME_NONNULL_END
