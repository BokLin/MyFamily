//
//  MFPersonModel+CoreDataProperties.h
//  MyFamily
//
//  Created by Ricky Lin on 16/4/6.
//  Copyright © 2016年 Linbo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "MFPersonModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFPersonModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *birthday;
@property (nonatomic) BOOL birthday_isLunar;
@property (nullable, nonatomic, retain) NSString *blog;
@property (nullable, nonatomic, retain) NSString *bloodType;
@property (nullable, nonatomic, retain) NSString *company;
@property (nullable, nonatomic, retain) NSString *deathDate;
@property (nonatomic) BOOL deathDate_isLunar;
@property (nullable, nonatomic, retain) NSString *email;
@property (nonatomic) int32_t gender;
@property (nullable, nonatomic, retain) NSString *generation;
@property (nonatomic) int32_t height_CM;
@property (nullable, nonatomic, retain) NSString *hobby;
@property (nullable, nonatomic, retain) NSString *iDCard;
@property (nonatomic) BOOL isDeath;
@property (nullable, nonatomic, retain) NSString *job;
@property (nullable, nonatomic, retain) NSString *locate;
@property (nullable, nonatomic, retain) NSString *mobile;
@property (nonatomic) int64_t personID;
@property (nullable, nonatomic, retain) NSString *photoUrl;
@property (nullable, nonatomic, retain) NSString *qq;
@property (nullable, nonatomic, retain) NSString *realName;
@property (nonatomic) int64_t regionID_homeland;
@property (nonatomic) int64_t regionID_living;
@property (nullable, nonatomic, retain) NSString *remark;
@property (nonatomic) int64_t userID;
@property (nullable, nonatomic, retain) NSString *version;
@property (nullable, nonatomic, retain) NSString *weChat;
@property (nullable, nonatomic, retain) NSString *weibo;
@property (nonatomic) float weight_KG;
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
@property (nullable, nonatomic, retain) NSSet<MFRelationModel *> *relation_froms;
@property (nullable, nonatomic, retain) NSSet<MFRelationModel *> *relation_tos;
@property (nullable, nonatomic, retain) MFUserModel *user;

@end

@interface MFPersonModel (CoreDataGeneratedAccessors)

- (void)addRelation_fromsObject:(MFRelationModel *)value;
- (void)removeRelation_fromsObject:(MFRelationModel *)value;
- (void)addRelation_froms:(NSSet<MFRelationModel *> *)values;
- (void)removeRelation_froms:(NSSet<MFRelationModel *> *)values;

- (void)addRelation_tosObject:(MFRelationModel *)value;
- (void)removeRelation_tosObject:(MFRelationModel *)value;
- (void)addRelation_tos:(NSSet<MFRelationModel *> *)values;
- (void)removeRelation_tos:(NSSet<MFRelationModel *> *)values;

@end

NS_ASSUME_NONNULL_END
