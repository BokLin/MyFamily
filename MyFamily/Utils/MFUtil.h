//
//  MFUtil.h
//  MyFamily
//
//  Created by EvenTouch on 15/8/31.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MFUtil : NSObject

#pragma mark - MD5 UTF8 去空格 网络状态

/**
 获取MD5
 **/
+ (NSString *)Md5:(NSString *)str;
/**
 把中文字符串做UTF-8转码
 **/
+(NSString *)toUTF8:(NSString *)encodeStr;
/**
 去掉空格
 **/
+(NSString *)trimSpace:(NSString *)string;
/**
 获取网络状态字符串
 **/
+ (NSString *)netWorkStatusStr;
/**
 如果s为字符串 返回@"" else 返回 s
 **/
+ (NSString *)crs:(NSString *)s;

#pragma mark - 匹配电话 邮箱 账号

/**
 匹配电话号码
 **/
+(BOOL)isMobileNumber:(NSString *)mobileNum;
/**
 匹配邮箱
 **/
+(BOOL)isValidateEmail:(NSString *)email;
/**
 利用正则表达式 验证账号 字母、数字、下划线、点(点、下划线不能作为开始)
 **/
+(BOOL)isValidateAccount:(NSString *)account;

#pragma mark - 图片压缩 版本比较 文件 文件夹大小

/**
 对图片尺寸进行压缩
 **/
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;
/**
 版本比较（1.2 1.2.3） v1>v2 则为1, v1=v2 则为0, v1<v2 则为-1
 **/
+ (int)version:(NSString *)v1 compare:(NSString *)v2;
/**
 单个文件的大小
 **/
+ (long long)fileSizeAtPath:(NSString*) filePath;
/**
 遍历文件夹获得文件夹大小，返回多少M
 **/
+ (float )folderSizeAtPath:(NSString*) folderPath;

#pragma mark - date 相关

/**
 date -> string to format
 **/
+ (NSString*)stringFromFomate:(NSDate*)date formate:(NSString*)formate;
/**
 string -> date from format
 **/
+ (NSDate *)dateFromFomate:(NSString *)datestring formate:(NSString*)formate;
/**
 date str1 from format1 -> date str2 to format2
 **/
+ (NSString *)transformDataString:(NSString *)dataStr format1:(NSString *)f1 format2:(NSString *)f2;
/**
 把yyyy-MM-dd HH:mm -> 刚刚/(1-59)分钟前/HH:mm/昨天HH:mm/MM-dd HH:mm/yyyy-MM-dd HH:mm
 **/
+ (NSString *)timeOffDateStr:(NSString *)datestring;

#pragma mark - 版本信息 设备信息 语言信息

/**
 发布版本
 **/
+ (NSString *)appVersion;
/**
 开发版本
 **/
+ (NSString *)appBuild;
/**
 设备名
 **/
+ (NSString *)device;
/**
 获取当前语言 zh & en
 **/
+ (NSString *)language;

#pragma mark - csv文件读写

/**
 返回包装好的数组数据
 **/
+ (NSArray *)readCSV:(NSString *)path;
/**
 
 **/

/**
 写入文件
 **/
+ (BOOL)writeCSV:(NSArray *)data pathUrl:(NSURL *)pathUrl;

+ (NSURL *)applicationDocumentsDirectory;

@end
