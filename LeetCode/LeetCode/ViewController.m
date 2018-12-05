//
//  ViewController.m
//  LeetCode
//
//  Created by Iris on 2018/12/5.
//  Copyright © 2018年 jingjing. All rights reserved.
//

#import "ViewController.h"

static NSString *const kLeetCodeTableViewCellID = @"leetCodeTableView";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *leetCodeTableView;
@property (nonatomic,copy) NSArray *leetCodeArray;
@end

@implementation ViewController

- (NSArray *)leetCodeArray {
    if (_leetCodeArray == nil) {
        _leetCodeArray = @[@"从排序数组中删除重复项"];
    }
    return _leetCodeArray;
}

- (UITableView *)leetCodeTableView {
    if (_leetCodeTableView == nil) {
        _leetCodeTableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        [_leetCodeTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kLeetCodeTableViewCellID];
        _leetCodeTableView.delegate = self;
        _leetCodeTableView.dataSource = self;
    }
    return _leetCodeTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.leetCodeTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.leetCodeArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kLeetCodeTableViewCellID];
    cell.textLabel.text = self.leetCodeArray[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
