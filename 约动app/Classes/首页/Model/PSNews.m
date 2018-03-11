//
//  PSNews.m
//  约动app
//
//  Created by sunny&pei on 2018/3/8.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import "PSNews.h"

@implementation PSNews
//+(instancetype)newsWithIcon:(NSString *)icon title:(NSString *)title lookNum:(NSString *)lookNum comNum:(NSString *)comNum{
//    PSNews * news = [[self alloc]init];
//    news.iconUrl = icon;
//    news.title = title;
//    news.lookNum = lookNum;
//    news.comNum = comNum;
//    return news;
//}
-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]){
        self.iconUrl = dict[@"icon"];
        self.title = dict[@"title"];
        self.lookNum = dict[@"look"];
        self.comNum = dict[@"com"];
    }
    return self;
}
+(instancetype)newsWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}
@end
