//
//  Response.m
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "Response.h"

@implementation Response

- (Response *)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}

//避免遇到未识别的key而崩溃
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"Response 发现未识别的key");
}

@end
