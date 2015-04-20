//
//  LYDNibBasedTableViewCell.h
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYDNibBasedTableViewCell : UITableViewCell

+ (UINib *)nib;
+ (NSString *)nibName;

+ (NSString *)cellIdentifier;
+ (id)cellForTableView:(UITableView *)tableView fromNib:(UINib *)nib;

@end
