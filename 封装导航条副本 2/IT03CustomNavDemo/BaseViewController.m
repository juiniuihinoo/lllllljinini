//
//  BaseViewController.m
//  IT03CustomNavDemo
//
//  Created by Mac on 16/1/25.
//  Copyright © 2016年 ZI. All rights reserved.
//
#define kMainW  [UIScreen mainScreen].bounds.size.width
#import "BaseViewController.h"

@interface BaseViewController (){
    // 中间文字和图片
    UILabel *_titleLable;
    UIImageView *_centerImage;
    // 左边文字和图片
    UIButton *_leftBtn;
    //右边文字和图片
    UIButton *_rightBtn;
}

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initBaseView];
}
#pragma mark - 初始化基本视图
- (void)initBaseView {
    self.navigationController.navigationBarHidden = YES;
   
    UIView *bgView = [[[UIView alloc]initWithFrame:CGRectMake(0, 0, kMainW, 64)]autorelease];
    bgView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:bgView];
    
    UILabel *textLable = [[[UILabel alloc]initWithFrame:CGRectZero]autorelease];
    textLable.textAlignment = NSTextAlignmentCenter;
    textLable.font = [UIFont systemFontOfSize:18.0f];
    textLable.textColor = [UIColor whiteColor];
       [self.view addSubview:textLable];
    _titleLable = textLable;
    
    UIImageView *imageView = [[[UIImageView alloc]initWithFrame:CGRectZero]autorelease];
      [self.view addSubview:imageView];
    _centerImage = imageView;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectZero;
    [btn addTarget:self action:@selector(leftEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    _leftBtn = btn;
    
    UIButton *btnR = [UIButton buttonWithType:UIButtonTypeCustom];
    btnR.frame = CGRectZero;
    [btnR addTarget:self action:@selector(rightEvent:) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:btnR];
    _rightBtn = btnR;
    

}
#pragma mark - 左btn 事件
- (void)leftEvent:(id)sender{

}
#pragma mark - 右btn 事件
- (void)rightEvent:(id)sender{

}
- (void)setAttributeBase:(NSString *)title withLeftStr :(NSString *)leftStr  withRightStr:(NSString *)righrStr{
    if (!title && !leftStr && !righrStr) {
        return;
    }
    // 全局变量 用 title.length 判断
    if (title) {
        if ([title hasSuffix:@".png"] || [title hasSuffix:@".jpeg"] || [title hasSuffix:@".jpg"]) {
            UIImage *image = [UIImage imageNamed:title];
            _centerImage.image = image;
            _centerImage.center = CGPointMake(self.view.center.x, 32 + 10);
            _centerImage.bounds = CGRectMake(0, 0, 200, 40);
        }else{
            _titleLable.text = title;
            _titleLable.center = CGPointMake(self.view.center.x, 32 + 10);
            _titleLable.bounds = CGRectMake(0, 0, 200, 40);
        }
     }
    if (leftStr) {
        if ([leftStr hasSuffix:@".png"] || [leftStr hasSuffix:@".jpeg"] || [leftStr hasSuffix:@".jpg"]) {
            [_leftBtn setImage:[UIImage imageNamed:leftStr] forState:UIControlStateNormal];
            _leftBtn.frame = CGRectMake(10, 27, 30, 30);
        }else{
            [_leftBtn setTitle:leftStr forState:UIControlStateNormal];
             _leftBtn.frame = CGRectMake(10, 27, 30, 30);
               }
    }
    if (righrStr) {
        if ([righrStr hasSuffix:@".png"] || [righrStr hasSuffix:@".jpeg"] || [righrStr hasSuffix:@".jpg"]) {
            [_rightBtn setImage:[UIImage imageNamed:righrStr] forState:UIControlStateNormal];
            _rightBtn.frame = CGRectMake(kMainW-40, 27, 30, 30);
        }else{
            [_rightBtn setTitle:righrStr forState:UIControlStateNormal];
            _rightBtn.frame = CGRectMake(kMainW-40, 27, 30, 30);
        }
    }

    
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
