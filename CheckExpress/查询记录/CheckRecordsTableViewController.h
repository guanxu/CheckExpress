//
//  CheckRecordsTableViewController.h
//  CheckExpress
//
//  Created by 关旭 on 16/4/13.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToolFunction.h"
#import "CheckRecordsTableViewCell.h"

@interface CheckRecordsTableViewController : UITableViewController

@property (nonatomic , strong) NSArray *checkRecordsArray;

@property (strong, nonatomic) IBOutlet UITableView *CheckRecordsTableView;

@end
