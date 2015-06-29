//
//  LoginViewController.m
//  BasicKifDemo
//
//  Created by Brexton Pham on 6/29/15.
//  Copyright (c) 2015 Brexton Pham. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextField *usernameField = [[UITextField alloc] initWithFrame:CGRectMake(20, 30, 300, 40)];
    usernameField.placeholder = @"username";
    usernameField.accessibilityLabel = @"Username Field";
    usernameField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:usernameField];
    
    UITextField *passwordField = [[UITextField alloc] initWithFrame:CGRectMake(20, 90, 300, 40)];
    passwordField.placeholder = @"password";
    passwordField.secureTextEntry = YES;
    passwordField.accessibilityLabel = @"Password Field";
    passwordField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:passwordField];
    
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    submitButton.frame = CGRectMake(20, 150, 150, 40);
    [submitButton setTitle:@"Submit" forState:UIControlStateNormal];
    submitButton.accessibilityLabel = @"Submit Button";
    [submitButton addTarget:self action:@selector(submitButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    submitButton.backgroundColor = [UIColor redColor];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:submitButton];
    
}

- (void)submitButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
