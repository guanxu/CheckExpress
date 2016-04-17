//
//  CheckExpressRecords+CoreDataProperties.h
//  CheckExpress
//
//  Created by 关 旭 on 16/4/17.
//  Copyright © 2016年 guanxu. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "CheckExpressRecords.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheckExpressRecords (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *expressCompany;
@property (nullable, nonatomic, retain) NSString *expressNumber;
@property (nullable, nonatomic, retain) NSData *expressStatusArray;
@property (nullable, nonatomic, retain) NSString *expressRemarks;

@end

NS_ASSUME_NONNULL_END
