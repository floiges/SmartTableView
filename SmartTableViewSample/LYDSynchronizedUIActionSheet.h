//
//  LYDSynchronizedUIActionSheet.h
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYDSynchronizedUIActionSheet : NSObject<UIActionSheetDelegate>

@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, assign) NSInteger destructiveButtonIndex;
@property (nonatomic, assign) NSInteger cancleButtonIndex;

- (id)initWithTitles:(NSArray *)titles;
- (NSInteger)showInView:(UIView *)view;

@end
