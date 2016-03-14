//
//  PPTableViewCell.m
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//
#import "Tools.h"
#import "PPTableViewCell.h"
#import <QuartzCore/CALayer.h>
@implementation PPTableViewCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    self.backgroundColor  = UIColor_RGBA(1, 95, 165, 1);
    _titleLabel           = [UILabel new];
    _titleLabel.text      = @"管理PayPal余额";
    _titleLabel.textColor = UIColor_RGBA(237, 255, 255, 1);
    [self.contentView addSubview:_titleLabel];
    WS(weakSelf);
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.mas_left).with.equalTo(@15);
        make.centerY.equalTo(weakSelf.mas_centerY);
    }];
    

    _rightArrow       = [UIImageView new];
    _rightArrow.image = [UIImage imageNamed:@"icArrowDrillWhite24"];
    [self.contentView addSubview:_rightArrow];
    [_rightArrow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakSelf.mas_right).with.equalTo(@-15);
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.width.height.equalTo(@24);
    }];

    
    for (int i = 0; i < 2; i ++) {
        UIView *line = [UIView new];
        [self.contentView addSubview:line];
        if (i == 0) {
            line.frame = CGRectMake(15, 0,SCREEN_WIDTH - 30, 1);
        }
        else {
            line.frame = CGRectMake(15, 59, SCREEN_WIDTH- 30, 1);
        }
        
        CAGradientLayer *gradient = [CAGradientLayer layer];
        gradient.frame            = CGRectMake(0, 0, SCREEN_WIDTH- 30, 1);
        //设置渐变颜色方向
        gradient.startPoint       = CGPointMake(0, 0.5);
        gradient.endPoint         = CGPointMake(1, 0.5);
        gradient.colors           = [NSArray arrayWithObjects:(id)UIColor_RGBA(1, 95, 165, 1).CGColor,
                           (id)UIColor_RGBA(26, 118, 186, 1).CGColor,UIColor_RGBA(1, 95, 165, 1).CGColor,nil];
        //设定颜色分割点
        [line.layer insertSublayer:gradient atIndex:0];
    }

    
    

    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
