//
//  ToolFunction.m
//  CheckExpress
//
//  Created by 关 旭 on 16/4/12.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "ToolFunction.h"

@implementation ToolFunction

#pragma mark - 毫秒转日期
+ (NSString *)formatterDateWithTimeInterval:(NSString *)theDate
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy.MM.dd"];
    NSDate *dat = [NSDate dateWithTimeIntervalSince1970:[theDate doubleValue]/1000];
    NSString *timeStr = [formatter stringFromDate: dat];
    return timeStr;
}

#pragma mark - 毫秒转日期 分 秒
+ (NSString *)formatterCourrentTimesWithTimeInterval:(NSString *)theDate
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"mm:ss"];
    NSDate *dat = [NSDate dateWithTimeIntervalSince1970:[theDate doubleValue]/1000];
    NSString *timeStr = [formatter stringFromDate: dat];
    return timeStr;
}

#pragma mark - 插入数据 数据格式CheckExpressRecodsModel
+ (void)insertDataWithCheckExpressRecords:(CheckExpressRecodsModel *)checkExpressRecordsModel{
    
    NSManagedObject *contactInfo = [NSEntityDescription insertNewObjectForEntityForName:@"CheckExpressRecords" inManagedObjectContext:SharedAppDelegate.managedObjectContext];
    [contactInfo setValue:checkExpressRecordsModel.expressNumber forKey:@"expressNumber"];
    [contactInfo setValue:checkExpressRecordsModel.expressCompany forKey:@"expressCompany"];
    [contactInfo setValue:checkExpressRecordsModel.expressStatusArray forKey:@"expressStatusArray"];
    
    if ([SharedAppDelegate.managedObjectContext save:nil]) {
        NSLog(@"新增成功");
    } else {
        NSLog(@"新增失败");
    }
}

#pragma mark - 查询数据 数据格式CheckExpressRecodsModel
+ (NSArray *)queryData{
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"CheckExpressRecords"];
    return [SharedAppDelegate.managedObjectContext executeFetchRequest:request error:nil];
}

@end
