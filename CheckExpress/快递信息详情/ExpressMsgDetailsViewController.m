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
    NSLog(@"self.response : %@",self.response);
    return [[self.response.result objectForKey:@"list"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExpressMsgDetailsCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ExpressMsgDetailsCell"];
    }
    
    NSArray *ExpressMsgArray = [self.response.result objectForKey:@"list"];
    [(ExpressMsgDetailsTableViewCell *)cell layoutWithExpressStatusModel:[ExpressMsgArray objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
