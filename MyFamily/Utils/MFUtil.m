//
//  MFUtil.m
//  MyFamily
//
//  Created by EvenTouch on 15/8/31.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFUtil.h"

#import <CommonCrypto/CommonDigest.h>
#import "Globals.h"

@implementation MFUtil

+ (NSString *)Md5:(NSString *)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
}

//汉字转换成utf8
+ (NSString *)toUTF8:(NSString *)encodeStr{
    if (encodeStr == nil) {
        encodeStr = @"";
    }
    return [encodeStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
}

//去掉空格
+ (NSString *)trimSpace:(NSString *)string{
    NSString *resStr = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    return resStr;
}

+ (NSString *)netWorkStatusStr {
    
    NSString *statusStr = @"未知";
    // 状态栏是由当前app控制的，首先获取当前app
    UIApplication *app = [UIApplication sharedApplication];
    
    NSArray *children = [[[app valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
    
    int type = 0;
    for (id child in children) {
        if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
            type = [[child valueForKeyPath:@"dataNetworkType"] intValue];
        }
    }
    
    switch (type) {
        case 0:
            statusStr = @"无网络";
            break;
        case 1:
            statusStr = @"2G";
            break;
        case 2:
            statusStr = @"3G";
            break;
        case 3:
            statusStr = @"4G";
            break;
        case 4:
            statusStr = @"未知-4";
            break;
        case 5:
            statusStr = @"wifi";
            break;
        default:
            statusStr = @"未知";
            break;
    }
    
    return statusStr;
}

+(NSString *)crs:(NSString *)str
{
    if ([str isKindOfClass:[NSString class]]) {
        return str;
    }else if ([str isKindOfClass:[NSNumber class]]) {
        return [str description];
    }
    return @"";
}

// 正则判断手机号码地址格式
+ (BOOL)isMobileNumber:(NSString *)mobileNum
{
    /**
     * 手机号码
     * 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,183,187,188
     * 联通：130,131,132,152,155,156,185,186
     * 电信：133,1349,153,180,189
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    /**
     * 中国移动：China Mobile
     * 134[0-8],135,136,137,138,139,150,151,157,158,159,182,183,187,188
     */
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[2378])\\d)\\d{7}$";
    /**
     * 中国联通：China Unicom
     * 130,131,132,152,155,156,185,186
     */
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    /**
     * 中国电信：China Telecom
     * 133,1349,153,180,189
     */
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    /**
     * 大陆地区固话及小灵通
     * 区号：010,020,021,022,023,024,025,027,028,029
     * 号码：七位或八位
     */
    // NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:mobileNum] == YES)
        || ([regextestcm evaluateWithObject:mobileNum] == YES)
        || ([regextestct evaluateWithObject:mobileNum] == YES)
        || ([regextestcu evaluateWithObject:mobileNum] == YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

//利用正则表达式验证
+ (BOOL)isValidateEmail:(NSString *)email {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

+ (BOOL)isValidateAccount:(NSString *)account
{
    NSString *accountRegex = @"^(?!_)[a-zA-Z0-9_]+$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", accountRegex];
    return [emailTest evaluateWithObject:account];
}

//对图片尺寸进行压缩--
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
{
    // Create a graphics image context
    UIGraphicsBeginImageContext(newSize);
    
    // Tell the old image to draw in this new context, with the desired
    // new size
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // End the context
    UIGraphicsEndImageContext();
    
    // Return the new image.
    return newImage;
}

+ (int)version:(NSString *)v1 compare:(NSString *)v2
{
    NSArray *array1 = [v1 componentsSeparatedByString:@"."];
    NSArray *array2 = [v2 componentsSeparatedByString:@"."];
    
    int max = (int)MAX(array1.count, array2.count);
    
    for (int i = 0; i<max; i++) {
        
        int int1 = 0;
        if (array1.count>i) {
            NSString *str1 = array1[i];
            int1 = str1.intValue;
        }
        
        int int2 = 0;
        if (array2.count>i) {
            NSString *str2 = array2[i];
            int2 = str2.intValue;
        }
        
        if (int1 > int2) {
            return 1;
        }else if (int1 < int2) {
            return -1;
        }
    }
    
    return 0;
}

//单个文件的大小
+ (long long)fileSizeAtPath:(NSString*) filePath{
    NSFileManager* manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:filePath]){
        return [[manager attributesOfItemAtPath:filePath error:nil] fileSize];
    }
    return 0;
}

//遍历文件夹获得文件夹大小，返回多少M
+ (float )folderSizeAtPath:(NSString*) folderPath{
    NSFileManager* manager = [NSFileManager defaultManager];
    if (![manager fileExistsAtPath:folderPath]) return 0;
    NSEnumerator *childFilesEnumerator = [[manager subpathsAtPath:folderPath] objectEnumerator];
    NSString* fileName;
    long long folderSize = 0;
    while ((fileName = [childFilesEnumerator nextObject]) != nil){
        NSString* fileAbsolutePath = [folderPath stringByAppendingPathComponent:fileName];
        folderSize += [self fileSizeAtPath:fileAbsolutePath];
    }
    return folderSize/(1024.0*1024.0);
}


+ (NSString*)stringFromFomate:(NSDate*) date formate:(NSString*)formate {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formate];
    NSString *str = [formatter stringFromDate:date];
    return str;
}

+ (NSDate *)dateFromFomate:(NSString *)datestring formate:(NSString*)formate {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formate];
    NSDate *date = [formatter dateFromString:datestring];
    return date;
}

+ (NSString *)transformDataString:(NSString *)dataStr format1:(NSString *)f1 format2:(NSString *)f2
{
    NSDate *date = [MFUtil dateFromFomate:dataStr formate:f1];
    NSString *str = [MFUtil stringFromFomate:date formate:f2];
    
    return str;
}

+ (NSString *)timeOffDateStr:(NSString *)datestring
{
    NSDate *date = [MFUtil dateFromFomate:datestring formate:@"yyyy-MM-dd HH:mm"];
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    // 参数时间
    NSDateComponents *dateComps = [cal components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute fromDate:date];
    
    int year = (int)[dateComps year];
    int month = (int)[dateComps month];
    int day = (int)[dateComps day];
    int hour = (int)[dateComps hour];
    int minute = (int)[dateComps minute];
    //int second = (int)[dateComps second];
    
    // 当前时间
    NSDateComponents *dateComps1 = [cal components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute fromDate:[NSDate new]];
    
    int year1 = (int)[dateComps1 year];
    int month1 = (int)[dateComps1 month];
    int day1 = (int)[dateComps1 day];
    int hour1 = (int)[dateComps1 hour];
    int minute1 = (int)[dateComps1 minute];
    //int second1 = (int)[dateComps1 second];
    
    NSString *str = @"";
    
    if (year < year1) {
        str = datestring;
    }else if (month < month1) {
        str = [MFUtil transformDataString:datestring format1:@"yyyy-MM-dd mm:ss" format2:@"MM-dd mm:ss"];
    }else if (day < day1) {
        if (day+1 == day1) {
            str = [NSString stringWithFormat:@"%@ %@",@"昨天",[MFUtil transformDataString:datestring format1:@"yyyy-MM-dd mm:ss" format2:@"mm:ss"]];
        }else {
            str = [MFUtil transformDataString:datestring format1:@"yyyy-MM-dd mm:ss" format2:@"MM-dd mm:ss"];
        }
    }else if (hour < hour1) {
        if (hour+1 == hour1 && minute1<minute) {
            str = [NSString stringWithFormat:@"%d%@",(minute1-minute+60),@"分钟前"];
        }else {
            str = [MFUtil transformDataString:datestring format1:@"yyyy-MM-dd mm:ss" format2:@"MM-dd mm:ss"];
        }
    }else if (minute < minute1) {
        str = [NSString stringWithFormat:@"%d%@",(minute1-minute),@"分钟前"];
    }else {
        str = @"刚刚";
    }
    
    return str;
}

+ (NSString *)appVersion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    // 发布版本号
    return [infoDictionary objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appBuild
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    // build版本号
    return [infoDictionary objectForKey:@"CFBundleVersion"];
}

+ (NSString *)device
{
    // 设备名称
    UIDevice *device = [UIDevice currentDevice];
    return [MFUtil trimSpace:device.model];
}

+ (NSString *)language
{
    NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
    NSArray* languages = [defs objectForKey:@"AppleLanguages"];
    //NSLog(@"Language array:%@",[languages description]);
    NSString* preferredLang = [languages objectAtIndex:0];
    //NSLog(@"Preferred Language:%@", preferredLang);
    
    if ([preferredLang isEqualToString:@"zh-Hans"] || [preferredLang isEqualToString:@"zh-Hant"]) {
        return @"zh";
    }else {
        return @"en";
    }
}

+ (NSArray *)readCSV:(NSString *)path
{
    NSString *contents = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSArray *contentsArray = [contents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    NSInteger idx;
    
    NSMutableArray *mutArr = [[NSMutableArray alloc] init];
    
    NSArray *keys = @[];
    
    for (idx = 0; idx < contentsArray.count; idx++) {
        
        NSString* currentContent = [contentsArray objectAtIndex:idx];
        
        if (idx == 0) {
            keys = [currentContent componentsSeparatedByString:@","];
        }else {
            NSArray *values = [currentContent componentsSeparatedByString:@","];
            
            if (values.count >= keys.count ) {
                
                NSDictionary *mutDic = [[NSMutableDictionary alloc] init];
                
                for (int i = 0; i < keys.count; i++) {
                    
                    if (values.count > i) {
                        [mutDic setValue:values[i] forKey:keys[i]];
                        
                    }else {
                        //NSLog(@"csv error! i = %d",i);
                    }
                }
                
                [mutArr addObject:mutDic];

            }
        }
    }

    //NSLog([mutArr description]);
    
    return [NSArray arrayWithArray:mutArr];
    
}


+ (BOOL)writeCSV:(NSArray *)data pathUrl:(NSURL *)pathUrl
{
    if (data.count == 0) {
        NSLog(@"csv save data empty!");
        return NO;
    }
    
    NSDictionary *firDic = [data firstObject];
    
    NSMutableString *content = [NSMutableString string];

    NSArray *keys = [firDic allKeys];

    for (int i = 0; i<keys.count; i++) {
        
        NSString *key = keys[i];
        if (i != 0) {
            [content appendString:@","];
        }
        
        // 逗号和回车都替换

        NSString *key1 = [key stringByReplacingOccurrencesOfString:@"&#32" withString:@"&#_32"];
        NSString *key2 = [key1 stringByReplacingOccurrencesOfString:@"&#10" withString:@"&#_10"];
        NSString *key3 = [key2 stringByReplacingOccurrencesOfString:@"," withString:@"&#32"];
        NSString *key4 = [key3 stringByReplacingOccurrencesOfString:@"\n" withString:@"&#10"];
        
        [content appendString:key4];
        
        if (i == keys.count-1) {
            [content appendString:@"\n"];
        }
    }
    
    for (int k = 0; k<data.count; k++) {
        
        NSDictionary *dic = data[k];
        
        for (int i = 0; i<keys.count; i++) {
            
            NSString *value = dic[keys[i]];
            if (i != 0) {
                [content appendString:@","];
            }
            
            // 逗号和回车都替换
            NSString *value0 = [value description];
            
            NSString *value1 = [value0 stringByReplacingOccurrencesOfString:@"&#32" withString:@"&#_32"];
            NSString *value2 = [value1 stringByReplacingOccurrencesOfString:@"&#10" withString:@"&#_10"];
            NSString *value3 = [value2 stringByReplacingOccurrencesOfString:@"," withString:@"&#32"];
            NSString *value4 = [value3 stringByReplacingOccurrencesOfString:@"\n" withString:@"&#10"];
            
            if (value != nil) {
                [content appendString:value4];
            }

            if (i == keys.count-1 && k != data.count-1) {
                [content appendString:@"\n"];
            }
        }
    }
    //NSLog(content);
    
    NSError *error;
    
    [content writeToURL:pathUrl atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        NSLog(@"csv save error:%@",error);
        return NO;
    }else {
        NSLog(@"csv save success:%@",pathUrl.absoluteString.lastPathComponent);
    }
    
    return YES;
}

+ (NSURL *)applicationDocumentsDirectory {

    // 系统文件夹路径
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
