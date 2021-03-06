//
//  XHPullRefreshTableViewController.m
//  MessageDisplayExample
//
//  Created by 曾 宪华 on 14-6-6.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHPullRefreshTableViewController.h"

#import "XHRefreshControl.h"

@interface XHPullRefreshTableViewController () <XHRefreshControlDelegate>

@property (nonatomic, strong) XHRefreshControl *refreshControl;

@end

@implementation XHPullRefreshTableViewController

#pragma mark - Propertys

- (XHRefreshControl *)refreshControl {
    if (!_refreshControl) {
        _refreshControl = [[XHRefreshControl alloc] initWithScrollView:self.tableView];
        _refreshControl.delegate = self;
    }
    return _refreshControl;
}

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XHRefreshControl Delegate

- (BOOL)isLoading {
    return self.isLoading;
}

- (void)beginPullDownRefreshing {
    self.requestCurrentPage = 0;
}

- (void)beginLoadMoreRefreshing {
    self.requestCurrentPage ++;
}

@end
