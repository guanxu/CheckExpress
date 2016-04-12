//
//  ToolFunction.h
//  CheckExpress
//
//  Created by 关 旭 on 16/4/12.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolFunction : NSObject

#pragma mark - 毫秒转日期
+ (NSString *)formatterDateWithTimeInterval:(NSString *)theDate;

#pragma mark - 毫秒转日期 分 秒
+ (NSString *)formatterCourrentTimesWithTimeInterval:(NSString *)theDate;

@end
