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
    self.statusLabel.text = expressStatusModel.status;
}

@end
