//
//  XLEMemoryItem.m
//  XLEasyDemo
//
//  Created by Randy on 16/3/11.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import "XLEMemoryItem.h"

@implementation XLEMemoryItem

- (void)dealloc
{
    if (self.memoryCallback) {
        self.memoryCallback(self);
    }
}

@end
