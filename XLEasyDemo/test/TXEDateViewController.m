//
//  TXEDateViewController.m
//  XLEasyDemo
//
//  Created by Randy on 16/1/20.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import "TXEDateViewController.h"

@interface TXEDateViewController ()

@end

@implementation TXEDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doAddItemsOperation{
    [super doAddItemsOperation];
    
    XLEWS(weakSelf);
    [self.items addObject:[TXEDemoItem itemWithName:@"日历的week测试" desc:@"测试weekDay、weekOfMonth等字段" callback:^{
        NSDate *date = [NSDate dateWithTimeIntervalSinceNow:-10000000];
        NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear) fromDate:date];

        [weakSelf showDemoResultString:[NSString stringWithFormat:@"weekDay(从最近的周日开始的第几天):%ld weekOfMonth（在一个月中的第几个星期）:%ld weekOfYear（在一年中的第几个星期）:%ld",(long)components.weekday,(long)components.weekOfMonth, (long)components.weekOfYear]];
    }]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
