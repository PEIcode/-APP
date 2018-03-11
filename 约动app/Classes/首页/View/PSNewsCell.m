//
//  PSNewsCell.m
//  约动app
//
//  Created by sunny&pei on 2018/3/8.
//  Copyright © 2018年 sunny&pei. All rights reserved.
//

#import "PSNewsCell.h"
#import "PSNews.h"
@interface PSNewsCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *lookBtn;
@property (weak, nonatomic) IBOutlet UIButton *commentbtn;

@end
@implementation PSNewsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setNews:(PSNews *)news{
    _news = news;
    self.iconView.image = [UIImage imageNamed:news.iconUrl];
    self.titleLabel.text = news.title;
    [self.lookBtn setTitle:news.lookNum forState:UIControlStateNormal];
    [self.commentbtn setTitle:news.comNum forState:UIControlStateNormal];
}
@end
