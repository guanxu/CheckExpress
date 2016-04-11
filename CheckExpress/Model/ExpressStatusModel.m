//
//  ExpressStatusModel.m
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "ExpressStatusModel.h"

@implementation ExpressStatusModel

- (ExpressStatusModel *)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}

//避免遇到未识别的key而崩溃
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"ExpressStatusModel 发现未识别的key");
}
@end
