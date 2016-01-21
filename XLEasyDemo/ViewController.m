//
//  ViewController.m
//  XLEasyDemo
//
//  Created by Randy on 16/1/20.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import "ViewController.h"
#import "TXEDateViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"EasyDemo";

}

- (void)doAddItemsOperation{
    [super doAddItemsOperation];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"iOS9.3" desc:@"新版本功能测试" callback:^{
        
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"日期" desc:@"测试NSDate、NSDateComponents、NSDateFormatter等" callback:^{
        TXEDateViewController *vc = [[TXEDateViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
