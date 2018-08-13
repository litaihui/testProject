//
//  ViewController.m
//  test
//
//  Created by 李台辉 on 2018/8/10.
//  Copyright © 2018年 李台辉. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"根控制器";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    AViewController *a = [AViewController new];
    [self.navigationController pushViewController:a animated:YES];
}


@end
