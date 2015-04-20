//
//  LYDTwoToneTableView.m
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import "LYDTwoToneTableView.h"

@interface LYDTwoToneTableView ()

@property (nonatomic, strong) UIView *topStretcher;
@property (nonatomic, strong) UIView *bottomStretcher;

@end

@implementation LYDTwoToneTableView

- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.topStretcher) {
        if (self.contentOffset.y > 0) {
            //向下滑动
            self.topStretcher.hidden = YES;
        } else {
            self.topStretcher.frame = CGRectMake(0, self.contentOffset.y,
                                                 self.frame.size.width,
                                                 -self.contentOffset.y);
            self.topStretcher.hidden = NO;
        }
    }
    
    //先计算底端是否出现在屏幕上
    CGFloat contentBottom = (self.contentSize.height - self.contentOffset.y);
    CGFloat bottomGap = self.frame.size.height - contentBottom;
    if (bottomGap > 0 && self.bottomStretcher) {
        if (self.contentOffset.y < 0) {
            self.bottomStretcher.hidden = YES;
        } else {
            self.bottomStretcher.frame = CGRectMake(0, self.contentSize.height,
                                                    self.frame.size.width,
                                                    bottomGap);
            self.bottomStretcher.hidden = NO;
        }
    } else {
        self.bottomStretcher.hidden = YES;
    }
}

- (UIColor *)topColor {
    return self.topStretcher.backgroundColor;
}

- (void)setTopColor:(UIColor *)topColor {
    if (self.topStretcher == nil) {
        self.topStretcher = [[UIView alloc] initWithFrame:CGRectZero];
        [self addSubview:self.topStretcher];
    }
    
    if (self.topStretcher.backgroundColor != topColor) {
        self.topStretcher.backgroundColor = topColor;
    }
}

- (UIColor *)bottomColor {
    return self.bottomStretcher.backgroundColor;
}

- (void)setBottomColor:(UIColor *)bottomColor {
    if (self.bottomStretcher == nil) {
        self.bottomStretcher = [[UIView alloc] initWithFrame:CGRectZero];
        [self addSubview:self.bottomStretcher];
    }
    
    if (self.bottomStretcher.backgroundColor != bottomColor) {
        self.bottomStretcher.backgroundColor = bottomColor;
    }
}

@end
