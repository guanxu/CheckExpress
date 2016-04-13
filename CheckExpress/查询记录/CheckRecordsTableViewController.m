//
//  CheckRecordsTableViewController.m
//  CheckExpress
//
//  Created by 关旭 on 16/4/13.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "CheckRecordsTableViewController.h"

@interface CheckRecordsTableViewController ()

@end

@implementation CheckRecordsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 初始化
- (void)initData{
    
    //从数据库中读取数据
    self.checkRecordsArray = [ToolFunction queryData];
    
    //刷新界面
    [self.CheckRecordsTableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.checkRecordsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CheckRecordsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CheckRecordsCell"];
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CheckRecordsCell" forIndexPath:indexPath];
    }
    
    cell.textLabel.text = [[self.checkRecordsArray objectAtIndex:indexPath.row] valueForKey:@"expressNumber"];
    
    return cell;
}



@end
