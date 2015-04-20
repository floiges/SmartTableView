//
//  LYDSmartTableViewCell.h
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYDSmartTableViewCell : UITableViewCell

+ (id)cellForTableView:(UITableView *)tableView;
+ (NSString *)cellIdentifier;

- (id)initWithCellIdentifier:(NSString *)cellID;

@end
