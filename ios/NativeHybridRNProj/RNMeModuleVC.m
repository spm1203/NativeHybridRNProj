//
//  RNMeModuleVC.m
//  NativeHybridRNProj
//
//  Created by 蔡太闲 on 2018/7/4.
//  Copyright © 2018年 sihenggroup. All rights reserved.
//

#import "RNMeModuleVC.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

@interface RNMeModuleVC ()

@end

@implementation RNMeModuleVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *jsCodeLocation;
    
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"NativeHybridRNProj"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    
    self.view = rootView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
