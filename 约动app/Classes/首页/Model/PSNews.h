//
//  PSNews.h
//  约动app
//
//  Created by sunny&pei on 2018/3/8.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PSNews : NSObject
@property (nonatomic,copy)NSString *iconUrl;
@property (nonatomic,copy)NSString *title;
@property (nonatomic,assign)NSString *lookNum;
@property (nonatomic,assign)NSString *comNum;
//+(instancetype)newsWithIcon:(NSString *)icon title:(NSString *)title lookNum:(NSString *)lookNum comNum:(NSString *)comNum;
-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)newsWithDict:(NSDictionary *)dict;
@end
