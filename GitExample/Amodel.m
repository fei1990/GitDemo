//
//  Amodel.m
//  GitExample
//
//  Created by wangfei on 2018/3/12.
//  Copyright © 2018年 wangfei. All rights reserved.
//

#import "Amodel.h"

@implementation Amodel

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"%s", __func__);
    }
    return self;
}

- (void)run {
    NSLog(@"%s", __func__);
}

- (void)say {
    NSLog(@"%s", __func__);
}

- (void)walk {
    NSLog(@"%s", __func__);
}

- (void)look {
    NSLog(@"%s", __func__);
    NSLog(@"你好");
}

@end
