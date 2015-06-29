//
//  ViewController.m
//  BasicKifDemo
//
//  Created by Brexton Pham on 6/29/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    loginButton.frame = CGRectMake(30, 30, 100, 40);
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    loginButton.backgroundColor = [UIColor blueColor];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    loginButton.accessibilityLabel = @"Login Button";
    [self.view addSubview:loginButton];
}

- (void)loginButtonPressed:(id)sender {
    LoginViewController *loginViewController = [LoginViewController new];
    [self presentViewController:loginViewController animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
