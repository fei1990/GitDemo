//
//  BModel.m
//  GitExample
//
//  Created by wangfei on 2018/3/12.
//  Copyright © 2018年 wangfei. All rights reserved.
//

#import "BModel.h"

@implementation BModel

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"%s", __func__);
    }
    return self;
}

- (void)hello {
    NSLog(@"hello...");
    NSLog(@"%s", __func__);
}

- (void)method {
    NSLog(@"%s", __func__);
}

@end
