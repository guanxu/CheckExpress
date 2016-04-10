//
//  CompaniesListViewController.m
//  CheckExpress
//
//  Created by 关 旭 on 16/4/8.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "CompaniesListViewController.h"

@interface CompaniesListViewController ()

@end

@implementation CompaniesListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化数据
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//初始化数据
- (void)initData{
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"CompaniesList.plist" ofType:nil];
    self.companiesArray = [[NSMutableArray alloc] initWithContentsOfFile:filePath];
    //刷新列表
    [self.companiesTableView reloadData];
}


/**
 *  UITableView Delegate\DataSource
 *
 */

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.companiesArray.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDictionary *dic = self.companiesArray[section];
    return [NSString stringWithFormat:@"   %@", dic[@"title"]];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    
    return [self.companiesArray valueForKeyPath:@"title"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.companiesArray[section] objectForKey:@"companies"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CompanyCell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CompanyCell"];
    }
    
    NSDictionary *dic = self.companiesArray[indexPath.section];
    NSArray *companies = dic[@"companies"];
    
    cell.textLabel.text = [companies[indexPath.row] objectForKey:@"name"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSDictionary *dic = self.companiesArray[indexPath.section];
    NSArray *companies = dic[@"companies"];
    
    if(self.selectCompany){
        self.selectCompany([companies[indexPath.row] objectForKey:@"name"],[companies[indexPath.row] objectForKey:@"type"]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
