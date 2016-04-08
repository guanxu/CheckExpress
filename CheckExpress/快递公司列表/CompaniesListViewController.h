//
//  CompaniesListViewController.h
//  CheckExpress
//
//  Created by 关 旭 on 16/4/8.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompaniesListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *companiesArray;

@property (strong, nonatomic) IBOutlet UITableView *companiesTableView;

@end
