//
//  LYDNibBasedTableViewCell.m
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import "LYDNibBasedTableViewCell.h"

@implementation LYDNibBasedTableViewCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark -
#pragma mark Cell generation

+ (NSString *)cellIdentifier {
    return NSStringFromClass([self class]);
}

+ (id)cellForTableView:(UITableView *)tableView fromNib:(UINib *)nib {
    NSString *cellID = [self cellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        NSArray *nibObjects = [nib instantiateWithOwner:nil options:nil];
        
        NSAssert2([nibObjects count] >0 &&
                  [[nibObjects firstObject] isKindOfClass:[self class]],
                  @"Nib '%@' does not appear to contain a valid %@", [self nibName], NSStringFromClass([self class]));
        cell = [nibObjects firstObject];
    }
    
    return cell;
}

#pragma mark -
#pragma mark Nib support

+ (UINib *)nib {
    NSBundle *classBundle = [NSBundle bundleForClass:[self class]];
    return [UINib nibWithNibName:[self nibName] bundle:classBundle];
}

+ (NSString *)nibName {
    return [self cellIdentifier];
}

@end
