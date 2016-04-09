//
//  CompaniesListViewController.h
//  CheckExpress
//
//  Created by 关 旭 on 16/4/8.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SelectCompany)(NSString *companyName,NSString *companyType);

@interface CompaniesListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *companiesArray;

@property (nonatomic, strong) IBOutlet UITableView *companiesTableView;

@property (nonatomic , copy) SelectCompany selectCompany;

@property (nonatomic , strong ) NSString *TestStr;

@end
