//
//  TXEDemoViewController.h
//  XLEasyDemo
//
//  Created by Randy on 16/1/20.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import <UIKit/UIKit.h>

#define XLEWS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface TXEDemoItem : NSObject
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *desc;
@property (copy, nonatomic) void(^handleBlock)();

+ (TXEDemoItem *)itemWithName:(NSString *)name desc:(NSString *)desc callback:(void(^)())callback;

@end

@interface TXEDemoViewController : UIViewController
@property (strong, readonly, nonatomic) NSMutableArray<TXEDemoItem *> *items;

- (void)doAddItemsOperation NS_REQUIRES_SUPER;
- (void)showDemoResultString:(NSString *)result;
@end
