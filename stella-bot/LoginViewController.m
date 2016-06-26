//
//  LoginViewController.m
//  stella-bot
//
//  Created by Mohamed Hayibor on 6/25/16.
//  Copyright © 2016 Mohamed Hayibor. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize passwordField;
@synthesize userField;
UIGestureRecognizer *tapper;

- (void)viewDidLoad {
    [super viewDidLoad];
    CALayer *border = [CALayer layer];
    CGFloat borderWidth = 2;
    border.borderColor =  [UIColor colorWithRed:(29/255.0) green:(90/255.0) blue:(224/255.0) alpha:1.0].CGColor;
    border.frame = CGRectMake(0, userField.frame.size.height - borderWidth, userField.frame.size.width, userField.frame.size.height);
    border.borderWidth = borderWidth;
    [userField.layer addSublayer:border];
    userField.layer.masksToBounds = YES;
    CALayer *border1 = [CALayer layer];
    CGFloat borderWidth1 = 2;
    border1.borderColor =  [UIColor colorWithRed:(29/255.0) green:(90/255.0) blue:(224/255.0) alpha:1.0].CGColor;
    border1.frame = CGRectMake(0, passwordField.frame.size.height - borderWidth1, passwordField.frame.size.width, passwordField.frame.size.height);
    border1.borderWidth = borderWidth1;
    [passwordField.layer addSublayer:border1];
    passwordField.layer.masksToBounds = YES;
    tapper = [[UITapGestureRecognizer alloc]
              initWithTarget:self action:@selector(handleSingleTap:)];
    tapper.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapper];
    // Do any additional setup after loading the view from its nib.
}
- (void)handleSingleTap:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
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
