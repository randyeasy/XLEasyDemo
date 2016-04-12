//
//  XLEMemoryTestVC.m
//  XLEasyDemo
//
//  Created by Randy on 16/3/11.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import "XLEMemoryTestVC.h"
#import "XLEMemoryItem.h"
#import "XLEMemoryRef.h"

@interface XLEMemoryTestVC ()
@property (strong, nonatomic) XLEMemoryRef *memoryRef;
@end

@implementation XLEMemoryTestVC

- (void)testMemory
{
    XLEWS(weakSelf);
    XLEMemoryItem *item = [[XLEMemoryItem alloc] init];
    item.memoryCallback = ^(XLEMemoryItem *memoryItem){
        weakSelf.memoryRef.object = memoryItem;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [weakSelf showDemoResultString:[NSString stringWithFormat:@"%@",weakSelf.memoryRef.object]];
        });
    };
}

- (void)doAddItemsOperation{
    [super doAddItemsOperation];
    XLEWS(weakSelf);
    [self.items addObject:[TXEDemoItem itemWithName:@"delloc内存释放" desc:@"在delloc中对当前要释放的对象进行引用 延时3秒后访问释放的对象会内存访问错误" callback:^{
        [weakSelf testMemory];
    }]];
}

#pragma mark - set get
- (XLEMemoryRef *)memoryRef
{
    if (_memoryRef == nil) {
        _memoryRef = [[XLEMemoryRef alloc] init];
    }
    return _memoryRef;
}

@end
