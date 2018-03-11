//
//  PSPubButton.h
//  约动app
//
//  Created by sunny&pei on 2018/3/7.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSPubButton : UIButton
+(instancetype)buttonWithType:(UIButtonType)buttonType frame: (CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont textAlignment:(NSTextAlignment )textAlignment image:(UIImage *)image imageViewContentMode:(UIViewContentMode *)imageViewContentMode ;
@end
