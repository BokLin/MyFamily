//
//  MFPersonModel.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/10.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MFRelationModel, MFUserModel;

@interface MFPersonModel : NSManagedObject

@property (nonatomic, retain) NSString * birthday;
@property (nonatomic) BOOL birthday_isLunar;
@property (nonatomic, retain) NSString * blog;
@property (nonatomic, retain) NSString * bloodType;
@property (nonatomic, retain) NSString * company;
@property (nonatomic, retain) NSString * deathDate;
@property (nonatomic) BOOL deathDate_isLunar;
@property (nonatomic, retain) NSString * email;
@property (nonatomic) int32_t gender;
@property (nonatomic, retain) NSString * generation;
@property (nonatomic) int32_t height_CM;
@property (nonatomic, retain) NSString * hobby;
@property (nonatomic, retain) NSString * iDCard;
@property (nonatomic) BOOL isDeath;
@property (nonatomic, retain) NSString * job;
@property (nonatomic, retain) NSString * locate;
@property (nonatomic, retain) NSString * mobile;
@property (nonatomic) int64_t personID;
@property (nonatomic, retain) NSString * photoUrl;
@property (nonatomic, retain) NSString * qq;
@property (nonatomic, retain) NSString * realName;
@property (nonatomic) int64_t regionID_homeland;
@property (nonatomic) int64_t regionID_living;
@property (nonatomic, retain) NSString * remark;
@property (nonatomic) int64_t userID;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSString * weChat;
@property (nonatomic, retain) NSString * weibo;
@property (nonatomic) float weight_KG;
@property (nonatomic) NSTimeInterval x_createDate;
@property (nonatomic) NSTimeInterval x_deleteDate;
@property (nonatomic, retain) NSString * x_device;
@property (nonatomic) BOOL x_invalid;
@property (nonatomic) BOOL x_isDefault;
@property (nonatomic) BOOL x_isDelete;
@property (nonatomic, retain) NSString * x_remark;
@property (nonatomic) int64_t x_rowID;
@property (nonatomic) NSTimeInterval x_updateDate;
@property (nonatomic) int64_t x_userID_create;
@property (nonatomic) int64_t x_userID_delete;
@property (nonatomic) int64_t x_userID_update;
@property (nonatomic, retain) NSString * x_version;
@property (nonatomic) BOOL x_isSync;
@property (nonatomic, retain) NSSet *relation_froms;
@property (nonatomic, retain) NSSet *relation_tos;
@property (nonatomic, retain) MFUserModel *user;
@end

@interface MFPersonModel (CoreDataGeneratedAccessors)

- (void)addRelation_fromsObject:(MFRelationModel *)value;
- (void)removeRelation_fromsObject:(MFRelationModel *)value;
- (void)addRelation_froms:(NSSet *)values;
- (void)removeRelation_froms:(NSSet *)values;

- (void)addRelation_tosObject:(MFRelationModel *)value;
- (void)removeRelation_tosObject:(MFRelationModel *)value;
- (void)addRelation_tos:(NSSet *)values;
- (void)removeRelation_tos:(NSSet *)values;

@end
