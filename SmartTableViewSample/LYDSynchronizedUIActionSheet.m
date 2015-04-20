//
//  LYDSynchronizedUIActionSheet.m
//  SmartTableViewSample
//
//  Created by 224 on 15/4/20.
//  Copyright (c) 2015年 zoomlgd. All rights reserved.
//

#import "LYDSynchronizedUIActionSheet.h"

@implementation LYDSynchronizedUIActionSheet {
    UIActionSheet *_actionSheet;
    NSInteger _selectedIndex;
}

- (id)initWithTitles:(NSArray *)titles {
    self = [super init];
    if (self) {
        _titles = titles;
        _destructiveButtonIndex = 0;
        _cancleButtonIndex = titles.count - 1;
    }
    return self;
}

- (void)setTitles:(NSArray *)titles {
    _titles = titles;
    _cancleButtonIndex = titles.count - 1;
}

- (NSInteger)showInView:(UIView *)view {
    _actionSheet = [[UIActionSheet alloc] init];
    for (NSString *title in _titles) {
        [_actionSheet addButtonWithTitle:title];
    }
    if (_destructiveButtonIndex != -1) {
        _actionSheet.destructiveButtonIndex = _destructiveButtonIndex;
    }
    if (_cancleButtonIndex != -1) {
        _actionSheet.cancelButtonIndex = _cancleButtonIndex;
    }
    [_actionSheet showInView:view];
    CFRunLoopRun();
    return _selectedIndex;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    _selectedIndex = buttonIndex;
    _actionSheet = nil;
    CFRunLoopStop(CFRunLoopGetCurrent());
}

@end
