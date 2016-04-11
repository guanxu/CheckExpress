//
//  ExpressMsgDetailsTableViewCell.h
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExpressStatusModel.h"

@interface ExpressMsgDetailsTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;

- (void)layoutWithExpressStatusModel:(ExpressStatusModel *)expressStatusModel;

@end
