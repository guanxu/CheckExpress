//
//  Response.h
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Response : NSObject

@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *msg;
@property (nonatomic, strong) NSDictionary *result;

- (Response *)initWithDictionary:(NSDictionary *)dictionary;

@end
