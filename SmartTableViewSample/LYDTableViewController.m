//
//  LYDTableViewController.m
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import "LYDTableViewController.h"
#import "LYDGradientView.h"
#import "LYDTwoToneTableView.h"

@interface LYDTableViewController ()

@end

@implementation LYDTableViewController

- (UIColor *)tableBackgroundColor {
    return [UIColor colorWithWhite:1.0 alpha:1.0];
}

- (UIColor *)tableTopColor {
    return [UIColor colorWithWhite:0.9 alpha:1.0];
}

- (void)loadView {
    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
    LYDTwoToneTableView *tv = [[LYDTwoToneTableView alloc] initWithFrame:appFrame
                                                                   style:UITableViewStylePlain];
    self.view = self.tableView = tv;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.navigationItem.title = @"Two Tone";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [self tableBackgroundColor];
    
    SEL setTopColorSel = @selector(setTopColor:);
    if ([self.tableView respondsToSelector:setTopColorSel]) {
        [self.tableView performSelector:setTopColorSel withObject:[self tableTopColor]];
    }
    
    SEL setBottomColorSel = @selector(setBottomColor:);
    if ([self.tableView respondsToSelector:setBottomColorSel]) {
        [self.tableView performSelector:setBottomColorSel withObject:[UIColor yellowColor]];
    }

    CGRect headerFrame = CGRectMake(0, 0, self.tableView.frame.size.width, 50.0);
    LYDGradientView *header = [[LYDGradientView alloc] initWithFrame:headerFrame];
    [header setGradientColors:[NSArray arrayWithObjects:(id)[[self tableTopColor] CGColor],
                              (id)[[self tableBackgroundColor] CGColor], nil]];
    self.tableView.tableHeaderView = header;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row + 1];
    return cell;
}

@end
