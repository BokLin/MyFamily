//
//  Global_Enums.h
//  MyFamily
//
//  Created by EvenTouch on 15/9/8.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#ifndef MyFamily_Global_Enums_h
#define MyFamily_Global_Enums_h

/**
 消息类型
 **/
typedef enum : NSUInteger {
    MFMessageTypeDefault,
    MFMessageTypeNotif,
    MFMessageTypeSystem,
} MFMessageType;

/**
 关系类型
 **/
typedef enum : NSUInteger {
    MFRelationTypeFriend,
    MFRelationTypeFather,
    MFRelationTypeMother,
    MFRelationTypeSon,
    MFRelationTypeDaughter,
    MFRelationTypeBrother,
    MFRelationTypeSister,
    MFRelationTypeHusband,
    MFRelationTypeWife
} MFRelationType;

/**
 通知循环类型
 **/
typedef enum : NSUInteger {
    MFNotifCycleTypeOnce,
    MFNotifCycleTypeDay,
    MFNotifCycleTypeWeek,
    MFNotifCycleTypeMonth，
    MFNotifCycleTypeYear
} MFNotifCycleType;

/**
 任务类型
 **/
typedef enum : NSUInteger {
    MFTaskTypeDefault,
    MFTaskTypeSystem,
    MFTaskTypeCustom,
} MFTaskType;

/**
 任务状态
 **/
typedef enum : NSUInteger {
    MFTaskStatusPrepare,//准备
    MFTaskStatusInProgress,//进行中
    MFTaskStatusPause,//挂起
    MFTaskStatusFinish,//完成
    MFTaskStatusExpired,//过期
    MFTaskStatusDeleted//删除
} MFTaskStatus;



#endif
