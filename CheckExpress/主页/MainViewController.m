//
//  MainViewController.m
//  CheckExpress
//
//  Created by 关 旭 on 16/4/7.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "MainViewController.h"
#import "APIClient.h"
#import "PopupView.h"
#import "LoadingView.h"
#import "CompaniesListViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController{
    
    //短提示
    PopupView           *popView;
    //快递公司textFiled
    IBOutlet UITextField *companyTextFiled;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//初始化
- (void)initData{
    popView = [[PopupView alloc] initWithFrame:CGRectMake(100, 300, 0, 0)];
    popView.ParentView = self.view;
}

//扫描
- (IBAction)scanningBtnClick:(UIButton *)sender {
}

//选择快递公司
- (IBAction)selectBtnClick:(UIButton *)sender {
    
    CompaniesListViewController *companiesListVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"CompaniesListViewController"];
    
    companiesListVC.selectCompany = ^(NSString *companyName,NSString *companyType){
        self.companyName = companyName;
        self.companyType = companyType;
        companyTextFiled.text = self.companyName;
    };
    
    [self.navigationController pushViewController:companiesListVC animated:YES];
}

//点击查询按钮
- (IBAction)searchBtnClick:(UIButton *)sender {
    //检测输入是否正确
    if(![self checkValue]){
        return;
    }
    
    //联网查询快递单号
    [self loadDataForSearchBtn];
}

//检测输入项是否合法
- (BOOL)checkValue{
    //检查备注
    
    //检查单号
    
    //检查快递公司名
    
    return YES;
}

//联网查询快递
- (void)loadDataForSearchBtn{
    
    [[LoadingView sharedLoadingView] loadingViewInView:self.view];
    //提交参数
    NSDictionary *paramet = @{@"type"       :      @"SFEXPRESS",
                              @"number":      @"993213992811"};
    //请求
    [[APIClient sharedClient] requestPath:@"http://apis.baidu.com/netpopo/express/express1"
                               parameters:paramet
                                  success:^(AFHTTPRequestOperation *operation, id JSON)
     //成功回调
     {
         
         //解析数据
         NSDictionary *jsonDic = [JSON objectForKey:@"result"];
         [jsonDic writeToFile:@"CompanyList.plist" atomically:YES];
         
         
         [self.view addSubview:popView];
         [popView setText:@"成功"];
         [[LoadingView sharedLoadingView] removeView];
         
     }
     //失败回调
                                  failure:^(AFHTTPRequestOperation *operation, NSError *error)
     {
         [self.view addSubview:popView];
         [popView setText:@"网络有问题了"];
         [[LoadingView sharedLoadingView] removeView];
     }];
    
    
}



@end
