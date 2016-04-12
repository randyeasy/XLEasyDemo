//
//  ViewController.m
//  XLEasyDemo
//
//  Created by Randy on 16/1/20.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import "ViewController.h"
#import "TXEDateViewController.h"
#import "XLEMemoryTestVC.h"
#import "XLERACViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"EasyDemo";

}

- (NSInteger)testReturn
{
    NSInteger i = 0;
    return ++i;
}

- (void)doAddItemsOperation{
    [super doAddItemsOperation];
    
    XLEWS(weakSelf);
    [self.items addObject:[TXEDemoItem itemWithName:@"iOS9.3" desc:@"新版本功能测试" callback:^{
        
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"日期" desc:@"测试NSDate、NSDateComponents、NSDateFormatter等" callback:^{
        TXEDateViewController *vc = [[TXEDateViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"返回值" desc:@"测试数值在返回的时候 i++" callback:^{
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"原值：0 i:%ld",(long)[weakSelf testReturn]]];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"返回值" desc:@"测试数值在返回的时候 ++i" callback:^{
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"原值：0 i:%ld",(long)[weakSelf testReturn]]];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"运算符" desc:@"i++" callback:^{
        int i=0;
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"原值：0 i:%ld",(long)i++]];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"运算符" desc:@"++i" callback:^{
        int i=0;
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"原值：0 i:%ld",(long)++i]];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"内存相关测试" desc:nil callback:^{
        XLEMemoryTestVC *vc = [[XLEMemoryTestVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"URL相关测试" desc:nil callback:^{
        NSURL *url = [NSURL URLWithString:@"http://www.baidu.com/path/subPath?param=test"];
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"scheme:%@,host:%@,path%@",[url scheme],[url host],[url path]]];
    }]];
    
    
    TXEDemoItem *item = [TXEDemoItem itemWithName:@"RAC相关测试" desc:nil callback:^{
        XLERACViewController *vc = [[XLERACViewController alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    }];
    [self.items addObject:item];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
