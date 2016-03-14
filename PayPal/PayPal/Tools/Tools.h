//
//  Tools.h
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//
#define UIColor_RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define  RANDOM_COLOR [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0  blue:arc4random()%256/255.0  alpha:1]
#define ORIGINAL_WIDTH 375     
#define ORIGINAL_HEIGHT 667    
#define FIT_WIDTH [UIScreen mainScreen].bounds.size.width/ORIGINAL_WIDTH
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define WS(weakSelf)                 __weak __typeof(&*self)weakSelf = self;


#import <Masonry.h>
