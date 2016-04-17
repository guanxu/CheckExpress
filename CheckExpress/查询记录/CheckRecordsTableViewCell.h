//
//  CheckRecordsTableViewCell.h
//  CheckExpress
//
//  Created by 关旭 on 16/4/13.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckRecordsTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *expressCompanyAndNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *expressStatusTimeLabel;
@property (strong, nonatomic) IBOutlet UILabel *expressRemarksLabel;

@end
