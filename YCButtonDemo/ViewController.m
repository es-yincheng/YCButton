//
//  ViewController.m
//  YCButtonDemo
//
//  Created by cheng yin on 16/1/12.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "ViewController.h"
#import "YCButton.h"
#import "CodeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jumpTo:(YCButton *)sender {
    CodeViewController *codeVC = [[CodeViewController alloc] init];
    [self.navigationController pushViewController:codeVC animated:YES];
}
@end
