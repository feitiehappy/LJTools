//
//  ViewController.m
//  LJTools
//
//  Created by Li Jie on 14/10/2.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"build版本号:%@",[LJDeviceTool getCurrentAppBuild]);
    NSLog(@"软件版本号:%@",[LJDeviceTool getCurrentAppVersion]);
    NSLog(@"当前设备型号:%@",[LJDeviceTool getCurrentDeviceModel]);
    NSLog(@"当前系统版本:%@",[LJDeviceTool getCurrentSystemVersion]);
    
    NSLog(@"当前年份:%ld",(long)[LJTimeTool getCurrentWeek]);
    
    [LJHTTPTool getJSONWithURL:@"http://" params:nil success:^(id responseJSON) {
        
        NSLog(@"%@", responseJSON);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@\n----\n%@", operation, error);
    }];

}

@end
