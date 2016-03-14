//
//  PPTableViewDealCell.m
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "PPTableViewDealCell.h"
#import "Tools.h"

@implementation PPTableViewDealCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    

    UIImageView *typeImageView = [UIImageView new];
    typeImageView.image        = [UIImage imageNamed:@"icPayInStore"];
    [self.contentView addSubview:typeImageView];
    WS(weakSelf);
    [typeImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.contentView.mas_left).with.equalTo(@15);
        make.centerY.equalTo(weakSelf.contentView.mas_centerY);
        make.width.height.equalTo(@50);
    }];

    
    UILabel *titleLabel  = [UILabel new];
    titleLabel.text      = @"Digital Ocean,Inc.";
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font      = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(typeImageView.mas_right).with.equalTo(@15);
        make.top.equalTo(weakSelf.contentView.mas_top).with.equalTo(@10);
        make.bottom.equalTo(weakSelf.mas_centerY);
        make.width.equalTo(@120);
    }];
    
    
    UILabel *typelabel  = [UILabel new];
    typelabel.text      = @"购物";
    typelabel.textColor = UIColor_RGBA(113, 183, 241, 1);
    typelabel.font      = [UIFont systemFontOfSize:12];
    [self.contentView addSubview:typelabel];
    [typelabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(typeImageView.mas_right).with.equalTo(@15);
        make.top.equalTo(weakSelf.contentView.mas_centerY);
        make.bottom.equalTo(weakSelf.contentView.mas_bottom).with.equalTo(@-10);
        make.width.equalTo(@60);
    }];
    
    
    UILabel *priceLabel  = [UILabel new];
    priceLabel.textColor = [UIColor whiteColor];
    priceLabel.text      = @"- $ 10.00";
    priceLabel.font      = titleLabel.font;
    [self.contentView addSubview:priceLabel];
    [priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakSelf.contentView.mas_right).with.equalTo(@-15);
        make.top.equalTo(titleLabel.mas_top);
        make.bottom.equalTo(weakSelf.contentView.mas_centerY);
    }];
    
    
    UILabel *dateLabel  = [UILabel new];
    dateLabel.textColor = UIColor_RGBA(113, 183, 241, 1);
    dateLabel.text      = @"1 月 28 日";
    dateLabel.font      = typelabel.font;
    [self.contentView addSubview:dateLabel];
    [dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakSelf.contentView.mas_right).with.equalTo(@-15);
        make.top.equalTo(titleLabel.mas_bottom);
        make.bottom.equalTo(typelabel.mas_bottom);
    }];
    
    
}

@end
