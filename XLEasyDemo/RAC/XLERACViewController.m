//
//  XLERACViewController.m
//  XLEasyDemo
//
//  Created by Randy on 16/4/12.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import "XLERACViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation XLERACViewController

- (void)doAddItemsOperation{
    [super doAddItemsOperation];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"定时器测试" desc:@"" callback:^{
        [[[RACSignal createSignal:^RACDisposable *(id subscriber) {
            [[[RACSignal interval:1 onScheduler:[RACScheduler mainThreadScheduler]] take:10] subscribeNext:^(id x) {
                NSLog(@"发送直到世界的尽头才能把我们分开");
                [subscriber sendNext:@"直到世界的尽头才能把我们分开"];
            }];
            return nil;
        }] takeUntil:[RACSignal createSignal:^RACDisposable *(id subscriber) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                NSLog(@"世界的尽头到了");
                [subscriber sendNext:@"世界的尽头到了"];
            });
            return nil;
        }]] subscribeNext:^(id x) {
            NSLog(@"%@", x);
        }];
    }]];
}

@end
