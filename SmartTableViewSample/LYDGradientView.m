//
//  LYDGradientView.m
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import "LYDGradientView.h"

@implementation LYDGradientView

- (void)setGradientColors:(NSArray *)colors {
    SEL setColorsSel = @selector(setColors:);
    if ([self.layer respondsToSelector:setColorsSel]) {
        [self.layer performSelector:setColorsSel withObject:colors];
    }
}

+ (Class)layerClass {
    return [CAGradientLayer class];
}

@end
