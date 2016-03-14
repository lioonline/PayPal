//
//  PPDealHeader.m
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "PPDealHeader.h"
#import "Tools.h"
@implementation PPDealHeader

- (id) initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    UILabel *titlelabel  = [UILabel new];
    titlelabel.text      = @"查看交易记录";
    titlelabel.font      = [UIFont systemFontOfSize:16];
    [self.contentView addSubview:titlelabel];
    titlelabel.textColor = [UIColor whiteColor];
    
    WS(weakSelf);
    [titlelabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.contentView.mas_left).with.equalTo(@15);
        make.centerY.equalTo(weakSelf.mas_centerY);
    }];
    

    UIImageView* rightArrow = [UIImageView new];
    rightArrow.image        = [UIImage imageNamed:@"icArrowDrillWhite24"];
    [self.contentView addSubview:rightArrow];
    [rightArrow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakSelf.mas_right).with.equalTo(@-15);
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.width.height.equalTo(@24);
    }];
    
    UILabel *all  = [UILabel new];
    all.text      = @"查看全部";
    all.font      = [UIFont systemFontOfSize:12];
    all.textColor = [UIColor whiteColor];
    [self.contentView addSubview:all];
    [all mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(rightArrow.mas_centerY);
        make.right.equalTo(rightArrow.mas_left).with.equalTo(@-10);

    }];
    
    
    
}

@end
