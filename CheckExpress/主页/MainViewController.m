//
//  MainViewController.m
//  CheckExpress
//
//  Created by 关 旭 on 16/4/7.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

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
    self.popView = [[PopupView alloc] initWithFrame:CGRectMake(100, 300, 0, 0)];
    self.popView.ParentView = self.view;
}

//扫描
- (IBAction)scanningBtnClick:(UIButton *)sender {
    
}

//选择快递公司
- (IBAction)selectBtnClick:(UIButton *)sender {
}

//点击查询按钮
- (IBAction)searchBtnClick:(UIButton *)sender {
    //检测输入是否正确
//    if(![self checkValue]){
//        return;
//    }
    
    //联网查询快递单号
    [self loadDataForSearchBtn];
}
- (IBAction)hideKeyboard:(id)sender {
    [self.view endEditing:YES];
}


//检测输入项是否合法
- (BOOL)checkValue{
    //检查备注
    
    //检查单号
    if([self.expressNumber.text isEqualToString:@""]){
        [self popViewWithString:@"请输入快递单号"];
        return NO;
    }
    if(self.expressNumber.text.length<=3){
        [self popViewWithString:@"快递单号不正确"];
        return NO;
    }
    
    //检查快递公司名
    if([self.companyShowBtn.currentTitle isEqualToString:@""]){
        [self popViewWithString:@"请选择快递公司"];
        return NO;
    }
    
    return YES;
}

//联网查询快递
- (void)loadDataForSearchBtn{
    
    [[LoadingView sharedLoadingView] loadingViewInView:self.view];
    //提交参数
    NSDictionary *paramet = @{@"type"   :  @"YUNDA",
                              @"number" :  @"3941210120048"};
    //请求
    [[APIClient sharedClient] requestPath:SEARCH_EXPRESS_PATH
                               parameters:paramet
                                  success:^(AFHTTPRequestOperation *operation, id JSON)
     //成功回调
     {
         [[LoadingView sharedLoadingView] removeView];
         NSLog(@"json : %@",JSON);
         //解析数据
         self.response = [[Response alloc] initWithDictionary:JSON];
         
         if([self.response.status isEqualToString:@"0"]){
             //正确
             [self performSegueWithIdentifier:@"showExpressMsgDetails" sender:self];
             
         }else{
             //错误
             [self popViewWithString:[NSString stringWithFormat:@"错误码:%@ \n错误信息:%@",self.response.status,self.response.msg]];
         }
     }
     //失败回调
                                  failure:^(AFHTTPRequestOperation *operation, NSError *error)
     {
         [[LoadingView sharedLoadingView] removeView];
         [self popViewWithString:@"网络出问题"];
     }];
    
    
}

//segue 跳转
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //跳转到公司列表时
    if([segue.identifier isEqualToString:@"showCompaniesList"]){
        CompaniesListViewController *companiesListVC = segue.destinationViewController;
        companiesListVC.selectCompany = ^(NSString *companyName,NSString *companyType){
            self.companyName = companyName;
            self.companyType = companyType;

            [self.companyShowBtn setTitle:self.companyName forState:UIControlStateNormal];
        };
    }
    
    //跳转到快递详情时
    if([segue.identifier isEqualToString:@"showExpressMsgDetails"]){
        ExpressMsgDetailsViewController *expressMsgDetailsVC = segue.destinationViewController;
        //传值
        expressMsgDetailsVC.response = self.response;
    }
}

//弹出提示
- (void) popViewWithString:(NSString *)str{
    [self.view addSubview:self.popView];
    [self.popView setText:str];
    [[LoadingView sharedLoadingView] removeView];
}



@end
