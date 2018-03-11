//
//  PSCircleController.m
//  约动app
//
//  Created by sunny&pei on 2018/3/10.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import "PSCircleController.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height
@interface PSCircleController () <UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,weak)UITableView *friendTable;
@property(nonatomic,weak)UITableView *schoolTable;
@property(nonatomic,assign)NSInteger *tag;
@end

@implementation PSCircleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建segmentControl
    [self createSegMentController];
    //创建两个视图TableView
    [self creatTwoTableView];
    
}
- (void)createSegMentController{
    NSArray *array = @[@"好友",@"校圈"];
    UISegmentedControl *segmentC = [[UISegmentedControl alloc]initWithItems:array];
    segmentC.frame = CGRectMake(0, 0, 180, 30);
    segmentC.selectedSegmentIndex = 0;
    segmentC.backgroundColor = [UIColor whiteColor];
    segmentC.tintColor = [UIColor redColor];
    [segmentC addTarget:self action:@selector(indexDidChangeForSegmentedCotrol:) forControlEvents:UIControlEventValueChanged];
    
    [self.navigationItem setTitleView:segmentC];
    
}
- (void)indexDidChangeForSegmentedCotrol:(UISegmentedControl *)segment{
    NSInteger selectIndex  = segment.selectedSegmentIndex;
    switch (selectIndex) {
        case 0:
            self.friendTable.hidden = NO;
            self.schoolTable.hidden = YES;
            segment.selectedSegmentIndex = 0;
            _tag = 0;
            [self.friendTable reloadData];
            break;
        case 1:
            self.friendTable.hidden = YES;
            self.schoolTable.hidden = NO;
            segment.selectedSegmentIndex = 1;
            _tag = 1;
            [self.schoolTable reloadData];
            break;
        default:
            break;
    }
}
/**
 创建两个tableView
 */
- (void)creatTwoTableView{
    UITableView *friendTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT-64-45) style:UITableViewStylePlain];
    friendTable.delegate = self;
    friendTable.dataSource = self;
    friendTable.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:friendTable];
    self.friendTable = friendTable;
    
    UITableView *schoolTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT-64-45) style:UITableViewStylePlain];
    schoolTable.delegate = self;
    schoolTable.dataSource = self;
    schoolTable.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:schoolTable];
    self.schoolTable = schoolTable;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UItableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (_tag == 0) {
        return 4;
    }else if(_tag == 1){
        return 5;
    }
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"circleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = @"LPZS";
    cell.detailTextLabel.text = @"this is a test data!";
    return cell;
}


@end
