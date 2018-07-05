//
//  ViewController.m
//  NativeHybridRNProj
//
//  Created by 蔡太闲 on 2018/7/4.
//  Copyright © 2018年 sihenggroup. All rights reserved.
//

#import "ViewController.h"
#import "RNMeModuleVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *presentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    presentBtn.frame = CGRectMake(100, 250, 100, 44);
    presentBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [presentBtn setTitle:@"跳转" forState:UIControlStateNormal];
    [presentBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [presentBtn addTarget:self action:@selector(nextAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentBtn];
}

-(void)nextAction
{
    RNMeModuleVC *meVC = [[RNMeModuleVC alloc] init];
    [self presentViewController:meVC animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
