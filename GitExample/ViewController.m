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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
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


@end
