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

@end
