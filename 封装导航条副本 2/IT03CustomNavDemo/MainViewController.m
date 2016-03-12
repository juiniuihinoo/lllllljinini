//
//  MainViewController.m
//  IT03CustomNavDemo
//
//  Created by Mac on 16/1/25.
//  Copyright © 2016年 ZI. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setAttributeBase:@"Main" withLeftStr:@"left" withRightStr:@"right"];
}
- (void)leftEvent:(id)sender{
    NSLog(@"%s",__FUNCTION__);
    [self presentViewController:[[MainViewController new]autorelease] animated:YES completion:^{
        
    }];
}
- (void)rightEvent:(id)sender{
   NSLog(@"%s",__FUNCTION__);
    [self.navigationController pushViewController:[MainViewController new] animated:YES];
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
