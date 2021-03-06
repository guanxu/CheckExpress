//
//  MainViewController.h
//  CheckExpress
//
//  Created by 关 旭 on 16/4/7.
//  Copyright © 2016年 guanxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopupView.h"
#import "APIClient.h"
#import "LoadingView.h"
#import "CompaniesListViewController.h"
#import "Constant.h"
#import "Response.h"
#import "ExpressMsgDetailsViewController.h"
#import "CheckExpressRecodsModel.h"


@interface MainViewController : UIViewController


//短提示
@property (strong, nonatomic) PopupView           *popView;

//快递单号textFiled
@property (strong, nonatomic) IBOutlet UITextField *expressNumber;
//快递公司textFiled
@property (strong, nonatomic) IBOutlet UITextField *companyTextFiled;
//快递公司呈现btn
@property (strong, nonatomic) IBOutlet UIButton *companyShowBtn;

@property (nonatomic, strong) NSString *companyName,*companyType;

@property (nonatomic, strong) Response *response;
//备注textFiled
@property (strong, nonatomic) IBOutlet UITextField *remarksTextFiled;

@end
