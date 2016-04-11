//
//  ExpressMsgDetailsViewController.m
//  CheckExpress
//
//  Created by 关旭 on 16/4/11.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "ExpressMsgDetailsViewController.h"

@interface ExpressMsgDetailsViewController ()

@end

@implementation ExpressMsgDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  UITableView Delegate\DataSource
 *
 */

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.response.result objectForKey:@"list"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ExpressMsgDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExpressMsgDetailsCell"];
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"ExpressMsgDetailsCell" forIndexPath:indexPath];
    }
    
    ExpressStatusModel *expressStatusModel = [[ExpressStatusModel alloc] initWithDictionary:[[self.response.result objectForKey:@"list"] objectAtIndex:indexPath.row]];
    [cell layoutWithExpressStatusModel:expressStatusModel];
    
    return cell;
}

@end
