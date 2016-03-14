//
//  PPFooterView.m
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "PPFooterView.h"
#import "Tools.h"
@implementation PPFooterView
- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        [self initView];
    }
    return self;
}

- (void) initView {
    
    self.contentView.backgroundColor = UIColor_RGBA(0, 120, 147, 1);
    
    
    UILabel * titleLabel = [UILabel new];
    titleLabel.text      = @"收付款";
    titleLabel.textColor = UIColor_RGBA(182, 239, 254, 1);
    titleLabel.font      = [UIFont systemFontOfSize:12];
    [self .contentView addSubview:titleLabel];
    WS(weakSelf);
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(weakSelf.contentView.mas_centerX);
        make.top.equalTo(weakSelf.contentView.mas_top).equalTo(@20);
    }];
    
    
    UIButton *sendMoney = [UIButton new];
    [sendMoney setImage:[UIImage imageNamed:@"icSendMoney"] forState:normal];
    [self.contentView addSubview:sendMoney];
    [sendMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(titleLabel.mas_bottom).equalTo(@20);
        make.width.height.equalTo(@80);
        make.centerX.equalTo(weakSelf.contentView.mas_centerX).with.equalTo(@(-SCREEN_WIDTH/4.0));
    }];
    
    
    UILabel *sendLabel  = [UILabel new];
    sendLabel.text      = @"付款";
    sendLabel.textColor = [UIColor whiteColor];
    sendLabel.font      = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:sendLabel];
    
    [sendLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(sendMoney.mas_bottom).with.equalTo(@10);
        make.centerX.equalTo(sendMoney.mas_centerX);
    }];
    
    
    UIButton *requestMoney = [UIButton new];
    [requestMoney setImage:[UIImage imageNamed:@"icRequestMoney"] forState:normal];
    [self.contentView addSubview:requestMoney];
    [requestMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(titleLabel.mas_bottom).equalTo(@20);
        make.width.height.equalTo(@80);
        make.centerX.equalTo(weakSelf.contentView.mas_centerX).with.equalTo(@(SCREEN_WIDTH/4.0));
    }];
    
    
    UILabel *requestLabel  = [UILabel new];
    requestLabel.text      = @"收款";
    requestLabel.textColor = [UIColor whiteColor];
    requestLabel.font      = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:requestLabel];

    [requestLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(requestMoney.mas_bottom).with.equalTo(@10);
        make.centerX.equalTo(requestMoney.mas_centerX);
    }];
    
    
    UIView *line = [UIView new];
    [self.contentView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(titleLabel.mas_bottom).with.equalTo(@20);
        make.bottom.equalTo(sendLabel.mas_bottom);
        make.centerX.equalTo(weakSelf.contentView.mas_centerX);
        make.width.equalTo(@1);
    }];
    
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame            = CGRectMake(0, 0, 1, 100);    //设置渐变颜色方向
    gradient.startPoint       = CGPointMake(0.5, 0.0);
    gradient.endPoint         = CGPointMake(0.5, 1.0);
    gradient.colors           = [NSArray arrayWithObjects:(id)UIColor_RGBA(0, 120, 148, 1).CGColor,
                                 (id)UIColor_RGBA(25, 141, 161, 1).CGColor,UIColor_RGBA(0, 120, 148, 1).CGColor,nil];
    //设定颜色分割点
    [line.layer insertSublayer:gradient atIndex:0];
    
}

@end
