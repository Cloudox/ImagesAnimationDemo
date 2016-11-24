//
//  ViewController.m
//  ImageAnimationDemo
//
//  Created by Cloudox on 2016/11/24.
//  Copyright © 2016年 Cloudox. All rights reserved.
//

#import "ViewController.h"

//设备的宽高
#define SCREENWIDTH       [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT      [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, SCREENWIDTH - 100, SCREENHEIGHT - 200)];
    [self.view addSubview:imageView];
    
    UIImage *image1 = [UIImage imageNamed:@"xia_off"];
    UIImage *image2 = [UIImage imageNamed:@"xia_on"];
    UIImage *image3 = [UIImage imageNamed:@"jinxuan_off"];
    UIImage *image4 = [UIImage imageNamed:@"jinxuan_on"];
    UIImage *image5 = [UIImage imageNamed:@"lan_off"];
    UIImage *image6 = [UIImage imageNamed:@"lan_on"];
    
    imageView.image = [UIImage animatedImageWithImages:@[image1, image2, image3, image4, image5, image6] duration:4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
