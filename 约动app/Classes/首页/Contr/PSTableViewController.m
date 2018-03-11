//
//  PSTableViewController.m
//  约动app
//
//  Created by sunny&pei on 2018/3/6.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import "PSTableViewController.h"
#import "PSHeadView.h"
#import "PSNewsCell.h"
#import "PSNews.h"
#import "PSWeather.h"
#import <AFNetworking.h>
@interface PSTableViewController ()

@property(nonatomic,strong)NSArray *newsArray;
@end

@implementation PSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableHeaderView = [PSHeadView headView];
    self.tableView.rowHeight = 80;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 懒加载
-(NSArray *)newsArray{
    if (_newsArray == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"news.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *newsA = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            PSNews *news = [PSNews newsWithDict:dict];
            [newsA addObject:news];
        }
        _newsArray = newsA;
    }
    return _newsArray;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return self.newsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PSNewsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newsID"];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"PSNewsCell" owner:nil options:nil]lastObject];
    }
    cell.news = self.newsArray[indexPath.row];
    return cell;
}

@end
