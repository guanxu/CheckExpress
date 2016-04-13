//
//  ToolFunction.h
//  CheckExpress
//
//  Created by 关 旭 on 16/4/12.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CheckExpressRecodsModel.h"
#import "Constant.h"

@interface ToolFunction : NSObject


/**
 *  日期相关操作
 */
#pragma mark - 毫秒转日期
+ (NSString *)formatterDateWithTimeInterval:(NSString *)theDate;

#pragma mark - 毫秒转日期 分 秒
+ (NSString *)formatterCourrentTimesWithTimeInterval:(NSString *)theDate;


/**
 *  CoreData相关操作 数据格式CheckExpressRecodsModel
 */
#pragma mark - 插入数据
+ (void)insertDataWithCheckExpressRecords:(CheckExpressRecodsModel *)checkExpressRecordsModel;

#pragma mark - 查询数据
+ (NSArray *)queryData;



@end
