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
    self.title = @"NSDateComponents";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doAddItemsOperation{
    [super doAddItemsOperation];
    
    XLEWS(weakSelf);
    [self.items addObject:[TXEDemoItem itemWithName:@"2015-12-28" desc:@"测试weekDay、weekOfMonth等字段" callback:^{
        NSString *dateStr = @"2015-12-28";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"yyyy-MM-dd";
        NSDate *date = [dateFormatter dateFromString:dateStr];
        NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitWeekdayOrdinal | NSCalendarUnitYearForWeekOfYear) fromDate:date];

        [weakSelf showDemoResultString:[NSString stringWithFormat:@"dateStr:%@ 周一\nweekDay(从最近的周日开始的第几天):%ld\nweekOfMonth（在一个月中的第几个星期）:%ld \nweekOfYear（在一年中的第几个星期）:%ld \nWeekdayOrdinal(序号 从1开始 月的第一天为星期一，依次往后计算):%ld\nyearForWeekOfYear:%ld",dateStr,(long)components.weekday,(long)components.weekOfMonth, (long)components.weekOfYear,(long)components.weekdayOrdinal,(long)components.yearForWeekOfYear]];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"2015-12-29" desc:@"测试weekDay、weekOfMonth等字段" callback:^{
        NSString *dateStr = @"2015-12-29";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"yyyy-MM-dd";
        NSDate *date = [dateFormatter dateFromString:dateStr];
        NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitWeekdayOrdinal | NSCalendarUnitYearForWeekOfYear) fromDate:date];
        
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"dateStr:%@ 周二\nweekDay(从最近的周日开始的第几天):%ld\nweekOfMonth（在一个月中的第几个星期）:%ld \nweekOfYear（在一年中的第几个星期）:%ld \nWeekdayOrdinal(序号 从1开始 月的第一天为星期一，依次往后计算):%ld\nyearForWeekOfYear:%ld",dateStr,(long)components.weekday,(long)components.weekOfMonth, (long)components.weekOfYear,(long)components.weekdayOrdinal,(long)components.yearForWeekOfYear]];
    }]];
    
    [self.items addObject:[TXEDemoItem itemWithName:@"2016-01-02" desc:@"测试weekDay、weekOfMonth等字段" callback:^{
        NSString *dateStr = @"2016-01-02";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"yyyy-MM-dd";
        NSDate *date = [dateFormatter dateFromString:dateStr];
        NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitWeekday | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitWeekdayOrdinal | NSCalendarUnitYearForWeekOfYear) fromDate:date];
        
        [weakSelf showDemoResultString:[NSString stringWithFormat:@"dateStr:%@ 周六\nweekDay(从最近的周日开始的第几天):%ld\nweekOfMonth（在一个月中的第几个星期）:%ld \nweekOfYear（在一年中的第几个星期）:%ld \nWeekdayOrdinal(序号 从1开始 月的第一天为星期一，依次往后计算):%ld\nyearForWeekOfYear:%ld",dateStr,(long)components.weekday,(long)components.weekOfMonth, (long)components.weekOfYear,(long)components.weekdayOrdinal,(long)components.yearForWeekOfYear]];
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
