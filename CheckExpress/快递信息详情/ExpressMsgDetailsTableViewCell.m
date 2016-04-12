//
//  ExpressMsgDetailsTableViewCell.m
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "ExpressMsgDetailsTableViewCell.h"

@implementation ExpressMsgDetailsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (void)layoutWithExpressStatusModel:(ExpressStatusModel *)expressStatusModel{
    //日期
    NSArray *expressStatusTimeArray = [expressStatusModel.time componentsSeparatedByString:@" "];
    self.dateLabel.text = [[expressStatusTimeArray objectAtIndex:0] stringByReplacingOccurrencesOfString:@"-" withString:@"."];
    
    //时间
    self.timeLabel.text = [[expressStatusTimeArray objectAtIndex:1] substringToIndex:5];
    
    //状态
    self.statusLabel.text = expressStatusModel.status;
    
}

@end
