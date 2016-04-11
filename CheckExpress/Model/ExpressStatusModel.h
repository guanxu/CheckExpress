//
//  ExpressStatusModel.h
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ExpressStatusModel : NSObject

//时间
@property (nonatomic, strong) NSString *time;

//状态
@property (nonatomic, strong) NSString *status;

- (ExpressStatusModel *)initWithDictionary:(NSDictionary *)dictionary;

@end
