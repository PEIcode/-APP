//
//  PSHeadView.m
//  约动app
//
//  Created by sunny&pei on 2018/3/7.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import "PSHeadView.h"
#import "PSPubButton.h"
#import <AFNetworking.h>
#import <MJExtension.h>
@interface PSHeadView()
#define KEYNPWEICHAR @"d331d7ec40386f491bd72501af1ccef5"
@property (weak, nonatomic) IBOutlet UIView *btnView;
@property (weak, nonatomic) IBOutlet UIButton *city;
@property (weak, nonatomic) IBOutlet UILabel *tempLab;
@property (weak, nonatomic) IBOutlet UILabel *dateLab;
@property (weak, nonatomic) IBOutlet UILabel *weatherLab;
@property (weak, nonatomic) IBOutlet UILabel *weekLab;

@end
@implementation PSHeadView

-(void)awakeFromNib{
    [super awakeFromNib];
//    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    //请求的城市名称
//    NSString *cityname = @"长春" ;
//    NSString *name = [cityname stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
//    NSLog(@"%@",name);
//    params[@"cityname"] = name;
//    params[@"key"] = KEYNPWEICHAR;
//    @"http://v.juhe.cn/weather/index?format=2&cityname=%E5%8C%97%E4%BA%AC&key=d331d7ec40386f491bd72501af1ccef5"
#warning 网络未打开
    /*
       网络请求
    */
//    [[AFHTTPSessionManager manager] GET:@"http://v.juhe.cn/weather/index?format=2&cityname=%E9%95%BF%E6%98%A5&key=d331d7ec40386f491bd72501af1ccef5" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSDictionary *dict =responseObject[@"result"][@"today"];
//        [self.city setTitle:dict[@"city"] forState:UIControlStateNormal];
//        self.weekLab.text = dict[@"week"];
//        self.tempLab.text = dict[@"temperature"];
//        self.weatherLab.text = dict[@"weather"];
//        self.dateLab.text = dict[@"date_y"];
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"%@",error);
//    }];

}


-(void)layoutSubviews{
    [self addMainBtn];
}
#pragma mark 加载功能按钮
-(void)addMainBtn{
    PSPubButton *routeBtn = [PSPubButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(34.8, 10, 60, 70) title:@"最新资讯" titleColor:[UIColor blackColor] titleFont:13 textAlignment:NSTextAlignmentCenter image:[UIImage imageNamed:@"news"] imageViewContentMode:UIViewContentModeCenter];
    [self.btnView addSubview:routeBtn];
    [routeBtn addTarget:self action:@selector(routeBtnClick) forControlEvents:UIControlEventTouchDown];
    
    PSPubButton *eatBtn = [PSPubButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(34.8*2+60, 10, 60, 70) title:@"社团活动" titleColor:[UIColor blackColor] titleFont:13 textAlignment:NSTextAlignmentCenter image:[UIImage imageNamed:@"news"] imageViewContentMode:UIViewContentModeCenter];
    [self.btnView addSubview:eatBtn];
    //    [eatBtn addTarget:self action:@selector(eatBtnClick) forControlEvents:UIControlEventTouchDown];
    PSPubButton *specialBtn = [PSPubButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(34.8*3+120, 10, 60, 70) title:@"日程安排" titleColor:[UIColor blackColor] titleFont:13 textAlignment:NSTextAlignmentCenter image:[UIImage imageNamed:@"news"] imageViewContentMode:UIViewContentModeCenter];
    [self.btnView addSubview:specialBtn];
    
    PSPubButton *recomBtn = [PSPubButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(34.8*4+180, 10, 60, 70) title:@"个人简报" titleColor:[UIColor blackColor] titleFont:13 textAlignment:NSTextAlignmentCenter image:[UIImage imageNamed:@"news"] imageViewContentMode:UIViewContentModeCenter];
    [self.btnView addSubview:recomBtn];
    
}
+(PSHeadView *)headView{
    return [[[NSBundle mainBundle] loadNibNamed:@"PSHeadView" owner:nil options:nil]lastObject];
}
@end
