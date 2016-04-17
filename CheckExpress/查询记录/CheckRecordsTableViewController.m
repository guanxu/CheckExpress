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
    
    //记录详情实体
    CheckExpressRecords *checkExpressRecords = [self.checkRecordsArray objectAtIndex:indexPath.row];
    
    //公司+单号
    cell.expressCompanyAndNumberLabel.text = [NSString stringWithFormat:@"%@  %@",checkExpressRecords.expressCompany,checkExpressRecords.expressNumber];
    
    //最近一条状态的日期
    NSArray *expressStatusArray = [NSKeyedUnarchiver unarchiveObjectWithData:checkExpressRecords.expressStatusArray];
    cell.expressStatusTimeLabel.text = [[expressStatusArray objectAtIndex:0] objectForKey:@"time"];
    
    //备注
    if(checkExpressRecords.expressRemarks){
        cell.expressRemarksLabel.text = checkExpressRecords.expressRemarks;
    }
    return cell;
}



@end
