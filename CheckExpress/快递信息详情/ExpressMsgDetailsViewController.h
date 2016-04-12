//
//  ExpressMsgDetailsViewController.h
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Response.h"
#import "ExpressMsgDetailsTableViewCell.h"

@interface ExpressMsgDetailsViewController : UIViewController

@property (nonatomic, strong) Response *response;
@property (strong, nonatomic) IBOutlet UITableView *expressStatusTableView;

@end
