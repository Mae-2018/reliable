//
//  ViewController.m
//  msgSendAndForward
//
//  Created by Mae on 2018/12/1.
//  Copyright © 2018年 刘静冉. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
#import "CViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BViewController *bVC = [[BViewController alloc]init];
    [bVC BTest];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
