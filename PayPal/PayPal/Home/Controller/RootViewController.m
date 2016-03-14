//
//  RootViewController.m
//  PayPal
//
//  Created by Cocoa Lee on 16/3/9.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "Tools.h"
#import "RootViewController.h"
#import "PPTableViewCell.h"
#import "PPHeaderView.h"
#import "PPTableViewDealCell.h"
#import "PPDealHeader.h"
#import "PPFooterView.h"
#import "MeViewController.h"

@interface RootViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    self.view.backgroundColor   = UIColor_RGBA(1, 95, 165, 1);
    UITableView *ppTableView    = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    ppTableView.delegate        = self;
    ppTableView.dataSource      = self;
    ppTableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    ppTableView.backgroundColor = UIColor_RGBA(1, 95, 165, 1);
    ppTableView.showsVerticalScrollIndicator = NO;

    [ppTableView registerClass:[PPTableViewCell class] forCellReuseIdentifier:@"ppcell"];
    [ppTableView registerClass:[PPTableViewDealCell class] forCellReuseIdentifier:@"dealcell"];
    [ppTableView registerClass:[PPHeaderView class] forHeaderFooterViewReuseIdentifier:@"ppHederView"];
    [ppTableView registerClass:[PPDealHeader class] forHeaderFooterViewReuseIdentifier:@"dealHeader"];
    [ppTableView registerClass:[PPFooterView class] forHeaderFooterViewReuseIdentifier:@"footerView"];
    [self.view addSubview:ppTableView];
    
    UIView *bgView         = [UIView new];
    bgView.frame           = CGRectMake(0, SCREEN_HEIGHT/2.0, SCREEN_WIDTH, 10000);
    bgView.backgroundColor = UIColor_RGBA(0, 120, 147, 1);
    [ppTableView addSubview:bgView];
    [ppTableView sendSubviewToBack:bgView];
    
}

#pragma mark -UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    else {
        return 3;
      
    }
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        PPTableViewCell *cell = (PPTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"ppcell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    else {
        PPTableViewDealCell *cell = (PPTableViewDealCell*)[tableView dequeueReusableCellWithIdentifier:@"dealcell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = UIColor_RGBA(1, 95, 165, 1);
        return cell;
    }
   
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 120;
    }
    else {
        return 60;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 0) {
        return 0.1;
    }
    else {
        return SCREEN_HEIGHT - 420 ;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

#pragma mark -UITableViewDelegate

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        PPHeaderView *headerView = (PPHeaderView*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"ppHederView"];
        [headerView.avatarButton addTarget:self action:@selector(pushToMeViewController) forControlEvents:UIControlEventTouchUpInside];
        return headerView;
    }
    else {
        PPDealHeader *dealHeaderView = (PPDealHeader*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"dealHeader"];
        return dealHeaderView;
    }
}

-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if (section == 0) {
        return  [UIView new];
    }
    else {
        PPFooterView *footerView = (PPFooterView*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"footerView"];
        return footerView;
    }
}

#pragma mark -to Me
- (void) pushToMeViewController {
    MeViewController *meViewControler  = [MeViewController new];
    [self.navigationController pushViewController:meViewControler animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
