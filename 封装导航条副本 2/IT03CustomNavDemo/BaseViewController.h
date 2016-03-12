//
//  BaseViewController.h
//  IT03CustomNavDemo
//
//  Created by Mac on 16/1/25.
//  Copyright © 2016年 ZI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
- (void)setAttributeBase:(NSString *)title withLeftStr :(NSString *)leftStr  withRightStr:(NSString *)righrStr;
- (void)leftEvent:(id)sender;
- (void)rightEvent:(id)sender;
@end
