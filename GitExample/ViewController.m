//
//  ViewController.m
//  GitExample
//
//  Created by wangfei on 2017/8/19.
//  Copyright © 2017年 wangfei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) int sum;

@property (nonatomic, copy) NSArray *arr;

@property (nonatomic, copy) NSString *str;

@property (nonatomic, copy) NSString *str1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sumMethod];
    
    [self minusMethod];
    
    [self helloWord];
    
    NSLog(@"another branch...");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sumMethod {
    int a = 10;
    int b = 20;
    _sum = a + b;
    NSLog(@"%d", _sum);
}

- (void)minusMethod {
    int c = 5;
    int d = _sum - c;
    NSLog(@"%d", d);
}

- (void)helloWord {
    NSLog(@"%s", __func__);
}

@end
