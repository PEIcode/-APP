//
//  PSTabbarController.m
//  约动app
//
//  Created by sunny&pei on 2018/3/6.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import "PSTabbarController.h"

@interface PSTabbarController ()

@end

@implementation PSTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIImage *image = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem.selectedImage = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
