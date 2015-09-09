//
//  MFInitialData.m
//  MyFamily
//
//  Created by EvenTouch on 15/9/6.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#import "MFInitialData.h"

#import "Globals.h"

@implementation MFInitialData

+ (void)initialTables
{
    [MFInitialData initialCitys];
    [MFInitialData initialHolidays];
}

+ (void)initialCitys
{
    // 写入Region
    NSString *path = [[NSBundle mainBundle] pathForResource:@"regions" ofType:@"csv"];
    
    NSArray *array = [MFUtil readCSV:path];
    
    NSString *province = @"";
    NSString *city = @"";
    NSString *county = @"";
    
    MFRegionModel *provinceModel;
    MFRegionModel *cityModel;
    MFRegionModel *countyModel;
    
    for (int i = 0; i < array.count; i++) {
        
        NSDictionary *dic = array[i];
        
        NSString *province1 = dic[@"province"];
        
        if (province1.length > 0) {
            
            province = province1;
            
            // 插入province
            provinceModel = (MFRegionModel *)[[MFDataHelper shareInstance] insertToTable:kTableRegion];
            
            provinceModel.region_province = province;
            provinceModel.regionID = provinceModel.x_rowID;
            provinceModel.level = 0;
            
        }else {
            
            NSString *city1 = dic[@"city"];
            if (city1.length > 0) {
                
                city = city1;
                
                // 插入city
                cityModel = (MFRegionModel *)[[MFDataHelper shareInstance] insertToTable:kTableRegion];
                
                cityModel.region_province = province;
                cityModel.region_city = city;
                cityModel.regionID = cityModel.x_rowID;
                cityModel.level = 1;
                
                cityModel.regionID_uplevel = provinceModel.regionID;
                cityModel.region_uplevel = provinceModel;
                [provinceModel addRegion_downlevelObject:cityModel];
                
            }else {
                
                NSString *county1 = dic[@"county"];
                
                if (county1.length > 0) {
                    county = county1;
                    
                    // 插入county
                    countyModel = (MFRegionModel *)[[MFDataHelper shareInstance] insertToTable:kTableRegion];
                    
                    countyModel.region_province = province;
                    countyModel.region_city = city;
                    countyModel.region_county = county;
                    countyModel.regionID = countyModel.x_rowID;
                    countyModel.level = 2;
                    
                    countyModel.regionID_uplevel = cityModel.regionID;
                    countyModel.region_uplevel = cityModel;
                    [cityModel addRegion_downlevelObject:countyModel];
                    
                }else {
                    NSLog(@"本条Region无效 i = %d",i);
                }
                
            }
        }
    }
    
    [[MFDataHelper shareInstance] saveContext:kTableRegion];
    
}

+ (void)initialHolidays
{
    // 写入Holiday
    NSString *path = [[NSBundle mainBundle] pathForResource:@"holidays" ofType:@"csv"];
    
    NSArray *array = [MFUtil readCSV:path];
    
    for (int i = 0; i < array.count; i++) {
        
        MFHolidayModel *holiday = (MFHolidayModel *)[[MFDataHelper shareInstance] insertToTable:kTableHoliday];
        NSDictionary *dic = array[i];
        
        holiday.holidayID = [dic[@"holidayID"] integerValue];
        holiday.name = dic[@"name"];
        holiday.date = dic[@"date"];
        
    }
    
    [[MFDataHelper shareInstance] saveContext:kTableHoliday];
}

@end
