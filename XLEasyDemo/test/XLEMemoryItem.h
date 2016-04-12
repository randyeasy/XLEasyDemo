//
//  XLEMemoryItem.h
//  XLEasyDemo
//
//  Created by Randy on 16/3/11.
//  Copyright © 2016年 Randy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XLEMemoryItem : NSObject
@property (copy, nonatomic) void(^memoryCallback)(XLEMemoryItem *memoryItem);

@end
