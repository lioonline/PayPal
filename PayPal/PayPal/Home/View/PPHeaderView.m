//
//  PPHeaderView.m
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//
#import "PPHeaderView.h"
#import "Tools.h"
@implementation PPHeaderView


-(id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        [self initHeaderView];
    }
    return self;
}

-(void)initHeaderView {

    _avatarButton                    = [UIButton new];
    _avatarButton.backgroundColor    = UIColor_RGBA(61, 134, 188, 1);
    _avatarButton.clipsToBounds      = YES;
    _avatarButton.layer.cornerRadius = 60* FIT_WIDTH / 2.0;
    [_avatarButton setImage:[UIImage imageNamed:@"Avatar"] forState:normal];
    [self.contentView addSubview:_avatarButton];
    WS(weakSelf);
    [_avatarButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(weakSelf.contentView.mas_centerX);
        make.centerY.equalTo(weakSelf.contentView.mas_centerY);
        make.width.height.equalTo(@(60* FIT_WIDTH));
    }];
    
    
    
    

    UIButton *settingButton = [UIButton new];
    [self.contentView addSubview:settingButton];
    [settingButton setImage:[UIImage imageNamed:@"icGear"] forState:normal];
    [settingButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_avatarButton.mas_top);
        make.right.equalTo(weakSelf.mas_right).with.equalTo(@-15);
        make.width.height.equalTo(@25);
    }];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
