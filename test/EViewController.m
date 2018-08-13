//
//  EViewController.m
//  test
//
//  Created by 李台辉 on 2018/8/10.
//  Copyright © 2018年 李台辉. All rights reserved.
//

#import "EViewController.h"
#import "DViewController.h"


@interface EViewController ()

@end

@implementation EViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"E";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self dismissViewControllerAnimated:YES completion:nil];
  
    DViewController *d =   [self.navigationController.viewControllers objectAtIndex:0];
    
    UIViewController *c = d.presentingViewController;
    UINavigationController *nav = (UINavigationController *)c;
    
    UINavigationController *nav2 = nav.topViewController.navigationController;
    [nav2 popToViewController:nav2.viewControllers[1] animated:YES];
    [self dismissViewControllerAnimated:YES completion:^{

    }];
    
    
    
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
