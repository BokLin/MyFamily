//
//  NSObject+Util.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/7.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "NSObject+Util.h"
#import <objc/runtime.h>

@implementation NSObject (MFObjectUtil)

- (NSDictionary *)properties_aps {
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];
    }
    free(properties);
    return props;
}
@end
